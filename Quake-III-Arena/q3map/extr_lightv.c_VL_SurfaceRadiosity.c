
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_17__ {double photons; int type; int color; int origin; } ;
typedef TYPE_4__ vlight_t ;
typedef int vec3_t ;
typedef int shaderInfo_t ;
struct TYPE_18__ {int width; TYPE_1__* verts; } ;
typedef TYPE_5__ mesh_t ;
struct TYPE_19__ {int mutex; TYPE_3__* facets; TYPE_5__* detailMesh; } ;
typedef TYPE_6__ lsurfaceTest_t ;
struct TYPE_20__ {int lightmapNum; scalar_t__ surfaceType; size_t shaderNum; int lightmapWidth; int lightmapHeight; int lightmapY; int lightmapX; int * lightmapVecs; int lightmapOrigin; } ;
typedef TYPE_7__ dsurface_t ;
struct TYPE_15__ {int normal; } ;
struct TYPE_16__ {TYPE_2__ plane; } ;
struct TYPE_14__ {int normal; int xyz; } ;
struct TYPE_13__ {int shader; } ;


 int ColorNormalize (float*,int ) ;
 int LIGHTMAP_HEIGHT ;
 int LIGHTMAP_WIDTH ;
 int LIGHT_POINTRADIAL ;
 scalar_t__ MST_PATCH ;
 scalar_t__ MST_TRIANGLE_SOUP ;
 int MutexLock (int ) ;
 int MutexUnlock (int ) ;
 int * ShaderInfoForShader (int ) ;
 int VL_FloodLight (TYPE_4__*) ;
 int VectorCopy (int ,int ) ;
 double VectorLength (float*) ;
 int VectorMA (int ,int,int ,int ) ;
 TYPE_7__* drawSurfaces ;
 TYPE_10__* dshaders ;
 float* lightFloats ;
 double lightPointScale ;
 float* lightmappixelarea ;
 TYPE_6__** lsurfaceTest ;
 int memset (TYPE_4__*,int ,int) ;
 float* oldLightFloats ;
 float radiosity_scale ;

void VL_SurfaceRadiosity( int num ) {
 dsurface_t *ds;
 mesh_t *mesh;
 shaderInfo_t *si;
 lsurfaceTest_t *test;
 int x, y, k;
 vec3_t base, normal;
 float *color, area;
 vlight_t vlight;

 ds = &drawSurfaces[num];

 if ( ds->lightmapNum < 0 ) {
  return;
 }


 if ( ds->surfaceType == MST_TRIANGLE_SOUP ) {
  return;
 }

 si = ShaderInfoForShader( dshaders[ ds->shaderNum].shader );
 test = lsurfaceTest[ num ];

 if (!test) {
  return;
 }

 for (x = 0; x < ds->lightmapWidth; x++) {
  for (y = 0; y < ds->lightmapHeight; y++) {

   k = ( ds->lightmapNum * LIGHTMAP_HEIGHT + ds->lightmapY + y)
       * LIGHTMAP_WIDTH + ds->lightmapX + x;
   area = lightmappixelarea[k];
   if (area <= 0)
    continue;

   if (ds->surfaceType == MST_PATCH)
   {
    mesh = test->detailMesh;
    VectorCopy( mesh->verts[y*mesh->width+x].xyz, base);
    VectorCopy( mesh->verts[y*mesh->width+x].normal, normal);
   }
   else
   {
    VectorMA(ds->lightmapOrigin, (float) x, ds->lightmapVecs[0], base);
    VectorMA(base, (float) y, ds->lightmapVecs[1], base);
    VectorCopy(test->facets[0].plane.normal, normal);
   }

   memset(&vlight, 0, sizeof(vlight_t));
   color = &oldLightFloats[k*3];

   VectorMA(base, 5, normal, vlight.origin);
   ColorNormalize(color, vlight.color);

   vlight.photons = VectorLength(color) * 0.05 * lightPointScale / (area * radiosity_scale);

   vlight.type = LIGHT_POINTRADIAL;

   VL_FloodLight(&vlight);

   MutexLock(test->mutex);

   lightFloats[k*3] = oldLightFloats[k*3];
   lightFloats[k*3+1] = oldLightFloats[k*3+1];
   lightFloats[k*3+2] = oldLightFloats[k*3+2];

   MutexUnlock(test->mutex);
  }
 }
}
