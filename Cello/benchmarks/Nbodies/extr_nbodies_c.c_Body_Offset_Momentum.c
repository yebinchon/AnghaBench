
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Body {double vx; double vy; double vz; } ;


 double solar_mass ;

__attribute__((used)) static void Body_Offset_Momentum(struct Body* b, double px, double py, double pz) {
  b->vx = -px / solar_mass;
  b->vy = -py / solar_mass;
  b->vz = -pz / solar_mass;
}
