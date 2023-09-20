import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabs Demo'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  icon: Icon(Icons.bus_alert),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.car_crash),
              Icon(Icons.directions_transit),
              Icon(Icons.bus_alert)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: const [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.orange),
                    child: Text("Drawer Header")),
                ListTile(
                  title: Text('Home'),
                ), 
                ListTile(
                  title: Text('Car'),
                ),
                ListTile(
                  title: Text('Train'),
                ),
                ListTile(
                  title: Text('Bus'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}