
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numpoints; int * points; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;


 float DotProduct (int ,int ) ;
 float WCONVEX_EPSILON ;
 int qfalse ;
 int qtrue ;

int Winding_PlanesConcave(winding_t *w1, winding_t *w2,
        vec3_t normal1, vec3_t normal2,
        float dist1, float dist2)
{
 int i;

 if (!w1 || !w2) return qfalse;


 for (i = 0; i < w1->numpoints; i++)
 {
  if (DotProduct(normal2, w1->points[i]) - dist2 > WCONVEX_EPSILON) return qtrue;
 }

 for (i = 0; i < w2->numpoints; i++)
 {
  if (DotProduct(normal1, w2->points[i]) - dist1 > WCONVEX_EPSILON) return qtrue;
 }

 return qfalse;
}
