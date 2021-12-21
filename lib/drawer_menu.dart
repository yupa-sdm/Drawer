import 'package:drawer/profile.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Yupa Sirinapha'),
            accountEmail: Text('yupa.soda62@sskru.ac.th'),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('หน้าแรก'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          title: "My Home Page",
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: const Text('ข้อมูลส่วนตัว'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('ออกจากระบบ'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
