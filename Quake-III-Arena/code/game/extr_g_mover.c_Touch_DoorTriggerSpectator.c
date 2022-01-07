
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec3_t ;
typedef int trace_t ;
struct TYPE_8__ {int* absmax; int* absmin; } ;
struct TYPE_7__ {scalar_t__* origin; } ;
struct TYPE_9__ {int count; TYPE_2__ r; TYPE_1__ s; } ;
typedef TYPE_3__ gentity_t ;


 int TeleportPlayer (TYPE_3__*,double*,double*) ;
 int VectorClear (double*) ;
 scalar_t__ fabs (scalar_t__) ;
 int vectoangles (double*,double*) ;

__attribute__((used)) static void Touch_DoorTriggerSpectator( gentity_t *ent, gentity_t *other, trace_t *trace ) {
 int i, axis;
 vec3_t origin, dir, angles;

 axis = ent->count;
 VectorClear(dir);
 if (fabs(other->s.origin[axis] - ent->r.absmax[axis]) <
  fabs(other->s.origin[axis] - ent->r.absmin[axis])) {
  origin[axis] = ent->r.absmin[axis] - 10;
  dir[axis] = -1;
 }
 else {
  origin[axis] = ent->r.absmax[axis] + 10;
  dir[axis] = 1;
 }
 for (i = 0; i < 3; i++) {
  if (i == axis) continue;
  origin[i] = (ent->r.absmin[i] + ent->r.absmax[i]) * 0.5;
 }
 vectoangles(dir, angles);
 TeleportPlayer(other, origin, angles );
}
