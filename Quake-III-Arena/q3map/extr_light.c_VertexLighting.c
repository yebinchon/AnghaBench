
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int traceWork_t ;
typedef int qboolean ;
struct TYPE_5__ {int numVerts; int firstVert; scalar_t__ surfaceType; scalar_t__ patchWidth; int * lightmapVecs; } ;
typedef TYPE_1__ dsurface_t ;
struct TYPE_6__ {float* normal; float* color; int xyz; } ;
typedef TYPE_2__ drawVert_t ;


 int LightingAtSample (int ,float*,float*,int ,int ,int *) ;
 scalar_t__ MST_TRIANGLE_SOUP ;
 int VectorCopy (int ,float*) ;
 int VectorScale (float*,int,float*) ;
 TYPE_2__* drawVerts ;

void VertexLighting( dsurface_t *ds, qboolean testOcclusion, qboolean forceSunLight, float scale, traceWork_t *tw ) {
 int i, j;
 drawVert_t *dv;
 vec3_t sample, normal;
 float max;

 VectorCopy( ds->lightmapVecs[2], normal );


 for ( i = 0 ; i < ds->numVerts ; i++ ) {
  dv = &drawVerts[ ds->firstVert + i ];

  if ( ds->patchWidth ) {
   LightingAtSample( dv->xyz, dv->normal, sample, testOcclusion, forceSunLight, tw );
  }
  else if (ds->surfaceType == MST_TRIANGLE_SOUP) {
   LightingAtSample( dv->xyz, dv->normal, sample, testOcclusion, forceSunLight, tw );
  }
  else {
   LightingAtSample( dv->xyz, normal, sample, testOcclusion, forceSunLight, tw );
  }

  if (scale >= 0)
   VectorScale(sample, scale, sample);

  max = sample[0];
  if ( sample[1] > max ) {
   max = sample[1];
  }
  if ( sample[2] > max ) {
   max = sample[2];
  }
  if ( max > 255 ) {
   VectorScale( sample, 255/max, sample );
  }


  for ( j = 0 ; j < 3 ; j++ ) {
   if ( sample[j] > 255 ) {
    sample[j] = 255;
   }
   dv->color[j] = sample[j];
  }




 }
}
