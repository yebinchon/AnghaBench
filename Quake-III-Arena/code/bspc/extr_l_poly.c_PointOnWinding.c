
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 double DotProduct (int ,int ) ;
 float MELT_ON_EPSILON ;
 double VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;

int PointOnWinding(winding_t *w, vec3_t normal, float dist, vec3_t point, int *spot)
{
 int i, j;
 vec3_t v1, v2;
 vec3_t edgenormal, edgevec;
 float edgedist, dot;

 *spot = 0;

 dot = DotProduct(point, normal) - dist;
 if (dot < -MELT_ON_EPSILON || dot > MELT_ON_EPSILON) return 0;

 for (i = 0; i < w->numpoints; i++)
 {
  j = (i+1) % w->numpoints;

  VectorSubtract(w->p[j], w->p[i], edgevec);
  CrossProduct(normal, edgevec, edgenormal);
  VectorNormalize(edgenormal);
  edgedist = DotProduct(edgenormal, w->p[i]);

  dot = DotProduct(point, edgenormal) - edgedist;
  if (dot < -MELT_ON_EPSILON || dot > MELT_ON_EPSILON) continue;

  VectorSubtract(point, w->p[i], v1);

  VectorSubtract(point, w->p[j], v2);


  if (VectorNormalize(v1) < 0.5) return 0;
  if (VectorNormalize(v2) < 0.5) return 0;



  if (DotProduct(v1, v2) < -0.99)
  {
   *spot = i + 1;
   return 1;
  }
 }
 return 0;
}
