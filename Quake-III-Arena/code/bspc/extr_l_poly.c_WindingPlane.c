
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int ,int ) ;
 double VectorLength (int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;

void WindingPlane (winding_t *w, vec3_t normal, vec_t *dist)
{
 vec3_t v1, v2;
 int i;


 for (i = 0; i < w->numpoints; i++)
 {
  VectorSubtract(w->p[(i+1) % w->numpoints], w->p[i], v1);
  VectorSubtract(w->p[(i+2) % w->numpoints], w->p[i], v2);
  if (VectorLength(v1) > 0.5 && VectorLength(v2) > 0.5) break;
 }
 CrossProduct(v2, v1, normal);
 VectorNormalize(normal);
 *dist = DotProduct(w->p[0], normal);
}
