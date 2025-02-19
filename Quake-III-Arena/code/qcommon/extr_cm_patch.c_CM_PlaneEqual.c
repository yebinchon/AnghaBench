
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* plane; } ;
typedef TYPE_1__ patchPlane_t ;


 scalar_t__ DIST_EPSILON ;
 scalar_t__ NORMAL_EPSILON ;
 int VectorNegate (float*,float*) ;
 scalar_t__ fabs (scalar_t__) ;
 int qfalse ;
 int qtrue ;

int CM_PlaneEqual(patchPlane_t *p, float plane[4], int *flipped) {
 float invplane[4];

 if (
    fabs(p->plane[0] - plane[0]) < NORMAL_EPSILON
 && fabs(p->plane[1] - plane[1]) < NORMAL_EPSILON
 && fabs(p->plane[2] - plane[2]) < NORMAL_EPSILON
 && fabs(p->plane[3] - plane[3]) < DIST_EPSILON )
 {
  *flipped = qfalse;
  return qtrue;
 }

 VectorNegate(plane, invplane);
 invplane[3] = -plane[3];

 if (
    fabs(p->plane[0] - invplane[0]) < NORMAL_EPSILON
 && fabs(p->plane[1] - invplane[1]) < NORMAL_EPSILON
 && fabs(p->plane[2] - invplane[2]) < NORMAL_EPSILON
 && fabs(p->plane[3] - invplane[3]) < DIST_EPSILON )
 {
  *flipped = qtrue;
  return qtrue;
 }

 return qfalse;
}
