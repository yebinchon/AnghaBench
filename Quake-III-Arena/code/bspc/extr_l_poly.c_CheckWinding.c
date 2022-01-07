
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int** p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;


 int BOGUS_RANGE ;
 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int*,int ) ;
 int Error (char*,...) ;
 int ON_EPSILON ;
 int VectorLength (int ) ;
 int VectorNormalize (int ) ;
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
  Error ("CheckWinding: %i points",w->numpoints);

 area = WindingArea(w);
 if (area < 1)
  Error ("CheckWinding: %f area", area);

 WindingPlane (w, facenormal, &facedist);

 for (i=0 ; i<w->numpoints ; i++)
 {
  p1 = w->p[i];

  for (j=0 ; j<3 ; j++)
   if (p1[j] > BOGUS_RANGE || p1[j] < -BOGUS_RANGE)
    Error ("CheckWinding: BUGUS_RANGE: %f",p1[j]);

  j = i+1 == w->numpoints ? 0 : i+1;


  d = DotProduct (p1, facenormal) - facedist;
  if (d < -ON_EPSILON || d > ON_EPSILON)
   Error ("CheckWinding: point off plane");


  p2 = w->p[j];
  VectorSubtract (p2, p1, dir);

  if (VectorLength (dir) < ON_EPSILON)
   Error ("CheckWinding: degenerate edge");

  CrossProduct (facenormal, dir, edgenormal);
  VectorNormalize (edgenormal);
  edgedist = DotProduct (p1, edgenormal);
  edgedist += ON_EPSILON;


  for (j=0 ; j<w->numpoints ; j++)
  {
   if (j == i)
    continue;
   d = DotProduct (w->p[j], edgenormal);
   if (d > edgedist)
    Error ("CheckWinding: non-convex");
  }
 }
}
