
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_4__ {int normal; } ;
struct TYPE_5__ {int numpoints; TYPE_1__ plane; int * boundaries; } ;
typedef TYPE_2__ lFacet_t ;


 scalar_t__ SIDE_BACK ;
 scalar_t__ VS_ChopWinding (int *,int *,int ) ;
 float VS_WindingAreaOutsideSolid (int *,int ) ;
 float WindingArea (int *) ;
 scalar_t__ nostitching ;

float VS_ChopWindingWithFacet(winding_t *w, lFacet_t *facet)
{
 int i;

 for (i = 0; i < facet->numpoints; i++)
 {
  if (VS_ChopWinding(w, &facet->boundaries[i], 0) == SIDE_BACK)
   return 0;
 }
 if (nostitching)
  return WindingArea(w);
 else
  return VS_WindingAreaOutsideSolid(w, facet->plane.normal);
}
