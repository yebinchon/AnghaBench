
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int** p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;


 int Com_Error (int ,char*,...) ;
 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int*,int ) ;
 int ERR_DROP ;
 int MAX_MAP_BOUNDS ;
 int ON_EPSILON ;
 int VectorLength (int ) ;
 int VectorNormalize2 (int ,int ) ;
 int VectorSubtract (int*,int*,int ) ;
 int WindingArea (TYPE_1__*) ;
 int WindingPlane (TYPE_1__*,int ,int*) ;

void CheckWinding (winding_t *w)
{
 int i, j;
 vec_t *p1, *p2;
 vec_t d, edgedist;
 vec3_t dir, edgenormal, facenormal;
 vec_t area;
 vec_t facedist;

 if (w->numpoints < 3)
  Com_Error (ERR_DROP, "CheckWinding: %i points",w->numpoints);

 area = WindingArea(w);
 if (area < 1)
  Com_Error (ERR_DROP, "CheckWinding: %f area", area);

 WindingPlane (w, facenormal, &facedist);

 for (i=0 ; i<w->numpoints ; i++)
 {
  p1 = w->p[i];

  for (j=0 ; j<3 ; j++)
   if (p1[j] > MAX_MAP_BOUNDS || p1[j] < -MAX_MAP_BOUNDS)
    Com_Error (ERR_DROP, "CheckFace: BUGUS_RANGE: %f",p1[j]);

  j = i+1 == w->numpoints ? 0 : i+1;


  d = DotProduct (p1, facenormal) - facedist;
  if (d < -ON_EPSILON || d > ON_EPSILON)
   Com_Error (ERR_DROP, "CheckWinding: point off plane");


  p2 = w->p[j];
  VectorSubtract (p2, p1, dir);

  if (VectorLength (dir) < ON_EPSILON)
   Com_Error (ERR_DROP, "CheckWinding: degenerate edge");

  CrossProduct (facenormal, dir, edgenormal);
  VectorNormalize2 (edgenormal, edgenormal);
  edgedist = DotProduct (p1, edgenormal);
  edgedist += ON_EPSILON;


  for (j=0 ; j<w->numpoints ; j++)
  {
   if (j == i)
    continue;
   d = DotProduct (w->p[j], edgenormal);
   if (d > edgedist)
    Com_Error (ERR_DROP, "CheckWinding: non-convex");
  }
 }
}
