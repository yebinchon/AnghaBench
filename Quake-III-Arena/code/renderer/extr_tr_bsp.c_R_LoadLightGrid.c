
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {float* lightGridInverseSize; float* lightGridSize; int* lightGridOrigin; int* lightGridBounds; int * lightGridData; TYPE_1__* bmodels; } ;
typedef TYPE_2__ world_t ;
typedef int* vec3_t ;
struct TYPE_9__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_3__ lump_t ;
struct TYPE_10__ {int * (* Hunk_Alloc ) (int,int ) ;int (* Printf ) (int ,char*) ;} ;
struct TYPE_7__ {float** bounds; } ;


 int Com_Memcpy (int *,void*,int) ;
 int PRINT_WARNING ;
 int R_ColorShiftLightingBytes (int *,int *) ;
 int ceil (float) ;
 scalar_t__ fileBase ;
 int floor (float) ;
 int h_low ;
 TYPE_5__ ri ;
 TYPE_2__ s_worldData ;
 int stub1 (int ,char*) ;
 int * stub2 (int,int ) ;

void R_LoadLightGrid( lump_t *l ) {
 int i;
 vec3_t maxs;
 int numGridPoints;
 world_t *w;
 float *wMins, *wMaxs;

 w = &s_worldData;

 w->lightGridInverseSize[0] = 1.0f / w->lightGridSize[0];
 w->lightGridInverseSize[1] = 1.0f / w->lightGridSize[1];
 w->lightGridInverseSize[2] = 1.0f / w->lightGridSize[2];

 wMins = w->bmodels[0].bounds[0];
 wMaxs = w->bmodels[0].bounds[1];

 for ( i = 0 ; i < 3 ; i++ ) {
  w->lightGridOrigin[i] = w->lightGridSize[i] * ceil( wMins[i] / w->lightGridSize[i] );
  maxs[i] = w->lightGridSize[i] * floor( wMaxs[i] / w->lightGridSize[i] );
  w->lightGridBounds[i] = (maxs[i] - w->lightGridOrigin[i])/w->lightGridSize[i] + 1;
 }

 numGridPoints = w->lightGridBounds[0] * w->lightGridBounds[1] * w->lightGridBounds[2];

 if ( l->filelen != numGridPoints * 8 ) {
  ri.Printf( PRINT_WARNING, "WARNING: light grid mismatch\n" );
  w->lightGridData = ((void*)0);
  return;
 }

 w->lightGridData = ri.Hunk_Alloc( l->filelen, h_low );
 Com_Memcpy( w->lightGridData, (void *)(fileBase + l->fileofs), l->filelen );


 for ( i = 0 ; i < numGridPoints ; i++ ) {
  R_ColorShiftLightingBytes( &w->lightGridData[i*8], &w->lightGridData[i*8] );
  R_ColorShiftLightingBytes( &w->lightGridData[i*8+3], &w->lightGridData[i*8+3] );
 }
}
