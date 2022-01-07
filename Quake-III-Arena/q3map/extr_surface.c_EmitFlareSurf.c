
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lightmapVecs; int lightmapOrigin; int fogNum; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_8__ {int * lightmapVecs; int lightmapOrigin; int fogNum; int shaderNum; int surfaceType; } ;
typedef TYPE_3__ dsurface_t ;
struct TYPE_6__ {int shader; } ;


 int EmitShader (int ) ;
 int Error (char*) ;
 size_t MAX_MAP_DRAW_SURFS ;
 int MST_FLARE ;
 int VectorCopy (int ,int ) ;
 TYPE_3__* drawSurfaces ;
 size_t numDrawSurfaces ;

void EmitFlareSurf( mapDrawSurface_t *ds ) {
 dsurface_t *out;

 if ( numDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS" );
 }
 out = &drawSurfaces[ numDrawSurfaces ];
 numDrawSurfaces++;

 out->surfaceType = MST_FLARE;
 out->shaderNum = EmitShader( ds->shaderInfo->shader );
 out->fogNum = ds->fogNum;

 VectorCopy( ds->lightmapOrigin, out->lightmapOrigin );
 VectorCopy( ds->lightmapVecs[0], out->lightmapVecs[0] );
 VectorCopy( ds->lightmapVecs[2], out->lightmapVecs[2] );
}
