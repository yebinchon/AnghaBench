
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int numVerts; int * lightmapVecs; TYPE_2__* shaderInfo; int lightmapOrigin; TYPE_1__* verts; int flareSurface; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_7__ {char* flareShader; int color; } ;
struct TYPE_6__ {int xyz; } ;


 TYPE_3__* AllocDrawSurf () ;
 void* ShaderInfoForShader (char*) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,int ,int ) ;
 int VectorScale (int ,double,int ) ;
 int qtrue ;

void CreateFlareSurface( mapDrawSurface_t *faceDs ) {
 mapDrawSurface_t *ds;
 int i;

 ds = AllocDrawSurf();

 if ( faceDs->shaderInfo->flareShader[0] ) {
  ds->shaderInfo = ShaderInfoForShader( faceDs->shaderInfo->flareShader );
 } else {
  ds->shaderInfo = ShaderInfoForShader( "flareshader" );
 }
 ds->flareSurface = qtrue;
 VectorCopy( faceDs->lightmapVecs[2], ds->lightmapVecs[2] );


 VectorClear( ds->lightmapOrigin );
 for ( i = 0 ; i < faceDs->numVerts ; i++ ) {
  VectorAdd( ds->lightmapOrigin, faceDs->verts[i].xyz, ds->lightmapOrigin );
 }
 VectorScale( ds->lightmapOrigin, 1.0/faceDs->numVerts, ds->lightmapOrigin );

 VectorMA( ds->lightmapOrigin, 2, ds->lightmapVecs[2], ds->lightmapOrigin );

 VectorCopy( faceDs->shaderInfo->color, ds->lightmapVecs[0] );


}
