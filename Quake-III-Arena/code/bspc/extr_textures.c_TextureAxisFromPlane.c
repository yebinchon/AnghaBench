
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_3__ {int normal; } ;
typedef TYPE_1__ plane_t ;


 scalar_t__ DotProduct (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int * baseaxis ;

void TextureAxisFromPlane(plane_t *pln, vec3_t xv, vec3_t yv)
{
 int bestaxis;
 vec_t dot,best;
 int i;

 best = 0;
 bestaxis = 0;

 for (i=0 ; i<6 ; i++)
 {
  dot = DotProduct (pln->normal, baseaxis[i*3]);
  if (dot > best)
  {
   best = dot;
   bestaxis = i;
  }
 }

 VectorCopy (baseaxis[bestaxis*3+1], xv);
 VectorCopy (baseaxis[bestaxis*3+2], yv);
}
