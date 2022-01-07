
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int numVerts; int * verts; int * lightmapVecs; int lightmapOrigin; int lightmapHeight; int lightmapWidth; int lightmapY; int lightmapX; int lightmapNum; int fogNum; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_12__ {size_t firstVert; int numVerts; int * lightmapVecs; int lightmapOrigin; int lightmapHeight; int lightmapWidth; int lightmapY; int lightmapX; int lightmapNum; int fogNum; int shaderNum; int surfaceType; } ;
typedef TYPE_3__ dsurface_t ;
struct TYPE_13__ {int* color; } ;
typedef TYPE_4__ drawVert_t ;
struct TYPE_10__ {int shader; } ;


 int EmitShader (int ) ;
 int Error (char*) ;
 size_t MAX_MAP_DRAW_SURFS ;
 size_t MAX_MAP_DRAW_VERTS ;
 int MST_PLANAR ;
 int SurfaceAsTristrip (TYPE_3__*) ;
 int VectorCopy (int ,int ) ;
 TYPE_3__* drawSurfaces ;
 TYPE_4__* drawVerts ;
 int memcpy (TYPE_4__*,int *,int) ;
 size_t numDrawSurfaces ;
 size_t numDrawVerts ;

void EmitPlanarSurf( mapDrawSurface_t *ds ) {
 int j;
 dsurface_t *out;
 drawVert_t *outv;

 if ( numDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS" );
 }
 out = &drawSurfaces[ numDrawSurfaces ];
 numDrawSurfaces++;

 out->surfaceType = MST_PLANAR;
 out->shaderNum = EmitShader( ds->shaderInfo->shader );
 out->firstVert = numDrawVerts;
 out->numVerts = ds->numVerts;
 out->fogNum = ds->fogNum;
 out->lightmapNum = ds->lightmapNum;
 out->lightmapX = ds->lightmapX;
 out->lightmapY = ds->lightmapY;
 out->lightmapWidth = ds->lightmapWidth;
 out->lightmapHeight = ds->lightmapHeight;

 VectorCopy( ds->lightmapOrigin, out->lightmapOrigin );
 VectorCopy( ds->lightmapVecs[0], out->lightmapVecs[0] );
 VectorCopy( ds->lightmapVecs[1], out->lightmapVecs[1] );
 VectorCopy( ds->lightmapVecs[2], out->lightmapVecs[2] );

 for ( j = 0 ; j < ds->numVerts ; j++ ) {
  if ( numDrawVerts == MAX_MAP_DRAW_VERTS ) {
   Error( "MAX_MAP_DRAW_VERTS" );
  }
  outv = &drawVerts[ numDrawVerts ];
  numDrawVerts++;
  memcpy( outv, &ds->verts[ j ], sizeof( *outv ) );
  outv->color[0] = 255;
  outv->color[1] = 255;
  outv->color[2] = 255;
  outv->color[3] = 255;
 }


 SurfaceAsTristrip( out );
}
