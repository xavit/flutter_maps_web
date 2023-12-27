import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(-16.5207124, -68.1240775),
              initialZoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                // Plenty of other options available!
              ),
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(-16.5207124, -68.1240775),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.location_on, color: Colors.red, size: 80),
                  ),
                  Marker(
                    point: LatLng(-16.5247134, -68.1640865),
                    width: 80,
                    height: 80,
                    child:
                        Icon(Icons.location_on, color: Colors.green, size: 80),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
