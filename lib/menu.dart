import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    [
      "https://www.bringmehug.com/wp-content/uploads/2021/07/223646637_3939061592866499_5222927819771198115_n.jpg",
      "ไก่ย่างเต็มตัว",
      79
    ],
    [
      "https://i.pinimg.com/736x/35/93/46/359346ed5e1cf53f5dc442821145c489--food-thailand.jpg",
      "ข้าวผัด",
      25,
    ],
    [
      "https://us-fbcloud.net/picpost/data/265/265633-537c8d6702bf6.jpg",
      "ส้มตำ",
      50
    ],
    [
      "https://2.bp.blogspot.com/-DVQtiX2MdOE/U3dZ996nnmI/AAAAAAAAC4c/5lIVoH7zNTY/s1600/ปีกบนไก่ทอด.jpg",
      "ปีกไก่ทอด",
      75
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${foodLists[index][1]}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " ${foodLists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.green,
                    label: Text(
                      "ต้องการ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
