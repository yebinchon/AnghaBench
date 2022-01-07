
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlight_t ;
typedef int plane_t ;
struct TYPE_7__ {scalar_t__ surfaceNum; scalar_t__ numtransFacets; int transSurfaces; int transFacets; int farplane; int cluster; int type; int facetNum; int endplane; scalar_t__ num; int facetTested; int clusterTested; } ;
typedef TYPE_1__ lightvolume_t ;


 int VL_R_CastLightAtSurface (int *,TYPE_1__*) ;
 int VL_R_FloodLight (int *,TYPE_1__*,int,int) ;
 int VL_SplitLightVolume (TYPE_1__*,TYPE_1__*,int *,double) ;
 int memcpy (int ,int ,int) ;
 int numvolumes ;

int VL_R_SplitLightVolume(vlight_t *light, lightvolume_t *volume, plane_t *split, int cluster, int firstportal)
{
 lightvolume_t back;
 int res;


 res = VL_SplitLightVolume(volume, &back, split, 0.1);

 if (res == 2)
 {
  memcpy(back.clusterTested, volume->clusterTested, sizeof(back.clusterTested));
  memcpy(back.facetTested, volume->facetTested, sizeof(back.facetTested));
  back.num = numvolumes++;
  back.endplane = volume->endplane;
  back.surfaceNum = volume->surfaceNum;
  back.facetNum = volume->facetNum;
  back.type = volume->type;
  back.cluster = volume->cluster;
  back.farplane = volume->farplane;
  if (volume->numtransFacets > 0)
  {
   memcpy(back.transFacets, volume->transFacets, sizeof(back.transFacets));
   memcpy(back.transSurfaces, volume->transSurfaces, sizeof(back.transSurfaces));
  }
  back.numtransFacets = volume->numtransFacets;


  VL_R_FloodLight(light, &back, cluster, firstportal);

  if (back.surfaceNum >= 0)
  {
   VL_R_CastLightAtSurface(light, &back);
  }
 }
 return res;
}
