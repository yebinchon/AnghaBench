
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_7__ {int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_8__ {double radius; int numFacets; int patch; scalar_t__ trisoup; TYPE_3__* facets; int origin; } ;
typedef TYPE_2__ lsurfaceTest_t ;
struct TYPE_9__ {int numpoints; float** points; TYPE_1__ plane; } ;
typedef TYPE_3__ lFacet_t ;
struct TYPE_10__ {scalar_t__ lightmapNum; } ;
typedef TYPE_4__ dsurface_t ;


 double DotProduct (int ,int ) ;
 int VectorSubtract (scalar_t__*,int ,scalar_t__*) ;
 TYPE_4__* drawSurfaces ;
 double fabs (scalar_t__) ;
 TYPE_2__** lsurfaceTest ;
 int numDrawSurfaces ;
 int qfalse ;
 int qtrue ;

int VS_FindAdjacentSurface(int surfaceNum, int facetNum, vec3_t p1, vec3_t p2, int *sNum, int *fNum, int *point)
{
 int i, j, k;
 lsurfaceTest_t *test;
 lFacet_t *facet;
 dsurface_t *ds;
 float *fp1, *fp2;
 vec3_t dir;
 plane_t *facetplane;


 facetplane = &lsurfaceTest[surfaceNum]->facets[facetNum].plane;





 for ( i = 0 ; i < numDrawSurfaces ; i++ )
 {
  if (i == surfaceNum)
   continue;
  test = lsurfaceTest[ i ];
  if (!test)
   continue;
  if (test->trisoup)
   continue;
  ds = &drawSurfaces[i];
  if ( ds->lightmapNum < 0 )
   continue;

  VectorSubtract(p1, test->origin, dir);
  if (fabs(dir[0]) > test->radius ||
   fabs(dir[1]) > test->radius ||
   fabs(dir[1]) > test->radius)
  {
   VectorSubtract(p2, test->origin, dir);
   if (fabs(dir[0]) > test->radius ||
    fabs(dir[1]) > test->radius ||
    fabs(dir[1]) > test->radius)
   {
    continue;
   }
  }

  for (j = 0; j < test->numFacets; j++)
  {
   facet = &test->facets[j];


   if (DotProduct(facet->plane.normal, facetplane->normal) < 0.9)
   {
    if (!test->trisoup && !test->patch)
     break;
    continue;
   }

   for (k = 0; k < facet->numpoints; k++)
   {
    fp1 = facet->points[k];
    if (fabs(p2[0] - fp1[0]) < 0.1 &&
     fabs(p2[1] - fp1[1]) < 0.1 &&
     fabs(p2[2] - fp1[2]) < 0.1)
    {
     fp2 = facet->points[(k+1) % facet->numpoints];
     if (fabs(p1[0] - fp2[0]) < 0.1 &&
      fabs(p1[1] - fp2[1]) < 0.1 &&
      fabs(p1[2] - fp2[2]) < 0.1)
     {



      *sNum = i;
      *fNum = j;
      *point = k;
      return qtrue;
     }
    }
   }
  }
 }
 return qfalse;
}
