
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef scalar_t__ vec_t ;
typedef int vec3_t ;
typedef int qboolean ;


 scalar_t__ DotProduct (int ,int ) ;
 scalar_t__ ON_EPSILON ;
 int SIDE_BACK ;
 int SIDE_CROSS ;
 int SIDE_FRONT ;
 int SIDE_ON ;

int WindingOnPlaneSide (winding_t *w, vec3_t normal, vec_t dist)
{
 qboolean front, back;
 int i;
 vec_t d;

 front = 0;
 back = 0;
 for (i=0 ; i<w->numpoints ; i++)
 {
  d = DotProduct (w->p[i], normal) - dist;
  if (d < -ON_EPSILON)
  {
   if (front)
    return SIDE_CROSS;
   back = 1;
   continue;
  }
  if (d > ON_EPSILON)
  {
   if (back)
    return SIDE_CROSS;
   front = 1;
   continue;
  }
 }

 if (back)
  return SIDE_BACK;
 if (front)
  return SIDE_FRONT;
 return SIDE_ON;
}
