
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {scalar_t__* normal; scalar_t__ dist; } ;
typedef TYPE_1__ plane_t ;


 scalar_t__ DIST_EPSILON ;
 scalar_t__ NORMAL_EPSILON ;
 scalar_t__ fabs (scalar_t__) ;
 int qfalse ;
 int qtrue ;

qboolean PlaneEqual (plane_t *p, vec3_t normal, vec_t dist)
{

 if (
    fabs(p->normal[0] - normal[0]) < NORMAL_EPSILON
 && fabs(p->normal[1] - normal[1]) < NORMAL_EPSILON
 && fabs(p->normal[2] - normal[2]) < NORMAL_EPSILON
 && fabs(p->dist - dist) < DIST_EPSILON )
  return qtrue;







 return qfalse;
}
