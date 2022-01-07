
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vsound_t ;
struct TYPE_11__ {TYPE_2__* facets; TYPE_1__* shader; } ;
typedef TYPE_3__ lsurfaceTest_t ;
struct TYPE_12__ {size_t surfaceNum; size_t facetNum; size_t numtransFacets; size_t* transSurfaces; size_t* transFacets; int* facetTested; int* clusterTested; int cluster; int farplane; int endplane; } ;
typedef TYPE_4__ lightvolume_t ;
struct TYPE_10__ {int num; } ;
struct TYPE_9__ {int surfaceFlags; int contents; } ;


 int CONTENTS_TRANSLUCENT ;
 int Error (char*,size_t) ;
 size_t MAX_TRANSLUCENTFACETS ;
 int SURF_ALPHASHADOW ;
 int VS_LightSurfaceWithVolume (size_t,size_t,int *,TYPE_4__*) ;
 int VS_R_FloodLight (int *,TYPE_4__*,int ,int ) ;
 TYPE_3__** lsurfaceTest ;
 int memset (int*,int ,int) ;

void VS_R_CastLightAtSurface(vsound_t *light, lightvolume_t *volume)
{
 lsurfaceTest_t *test;
 int i, n;


 VS_LightSurfaceWithVolume(volume->surfaceNum, volume->facetNum, light, volume);

 test = lsurfaceTest[ volume->surfaceNum ];

 if ( !(test->shader->surfaceFlags & SURF_ALPHASHADOW) && !(test->shader->contents & CONTENTS_TRANSLUCENT))
  return;

 if (volume->numtransFacets >= MAX_TRANSLUCENTFACETS)
  Error("a light valume went through more than %d translucent facets", MAX_TRANSLUCENTFACETS);

 volume->transSurfaces[volume->numtransFacets] = volume->surfaceNum;
 volume->transFacets[volume->numtransFacets] = volume->facetNum;
 volume->numtransFacets++;

 memset(volume->facetTested, 0, sizeof(volume->facetTested));
 for (i = 0; i < volume->numtransFacets; i++)
 {
  test = lsurfaceTest[ volume->transSurfaces[i] ];
  n = test->facets[volume->transFacets[i]].num;
  volume->facetTested[n >> 3] |= 1 << (n & 7);
 }
 memset(volume->clusterTested, 0, sizeof(volume->clusterTested));
 volume->endplane = volume->farplane;
 volume->surfaceNum = -1;
 volume->facetNum = 0;
 VS_R_FloodLight(light, volume, volume->cluster, 0);
 if (volume->surfaceNum >= 0)
 {
  VS_R_CastLightAtSurface(light, volume);
 }
}
