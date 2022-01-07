
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Body {double x; double y; double z; double vx; double mass; double vy; double vz; } ;


 double sqrt (double) ;

__attribute__((used)) static void Bodies_Advance(struct Body* bodies, size_t nbodies, double dt) {

  for(size_t i = 0; i < nbodies; i++) {

    struct Body* body0 = &bodies[i];

    for(size_t j = i+1; j < nbodies; j++) {

      struct Body* body1 = &bodies[j];

      double dx = body0->x - body1->x;
      double dy = body0->y - body1->y;
      double dz = body0->z - body1->z;

      double dsquared = dx * dx + dy * dy + dz * dz;
      double distance = sqrt(dsquared);
      double mag = dt / (dsquared * distance);

      body0->vx -= dx * body1->mass * mag;
      body0->vy -= dy * body1->mass * mag;
      body0->vz -= dz * body1->mass * mag;

      body1->vx += dx * body0->mass * mag;
      body1->vy += dy * body0->mass * mag;
      body1->vz += dz * body0->mass * mag;
    }
  }

  for(size_t i = 0; i < nbodies; i++) {
    struct Body* b = &bodies[i];
    b->x += dt * b->vx;
    b->y += dt * b->vy;
    b->z += dt * b->vz;
  }
}
