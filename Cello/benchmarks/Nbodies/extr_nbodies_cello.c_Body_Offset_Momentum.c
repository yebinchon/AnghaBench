
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Body {double vx; double vy; double vz; } ;


 double solar_mass ;

__attribute__((used)) static void Body_Offset_Momentum(struct Body* self, double px, double py, double pz) {
  self->vx = -px / solar_mass;
  self->vy = -py / solar_mass;
  self->vz = -pz / solar_mass;
}
