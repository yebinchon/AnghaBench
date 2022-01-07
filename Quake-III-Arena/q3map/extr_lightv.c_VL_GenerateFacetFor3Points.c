
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vec3_t ;
typedef int shaderInfo_t ;
typedef int qboolean ;
struct TYPE_15__ {int numpoints; int * points; int plane; int * boundaries; int ** lightmapCoords; scalar_t__ num; } ;
typedef TYPE_1__ lFacet_t ;
typedef int dsurface_t ;
struct TYPE_16__ {int * lightmap; int xyz; } ;
typedef TYPE_2__ drawVert_t ;


 int VL_GenerateBoundaryForPoints (int *,int *,int ,int ) ;
 int VL_LightmapMatrixFromPoints (int *,int *,TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int VL_PlaneFromPoints (int *,int ,int ,int ) ;
 int VL_TextureMatrixFromPoints (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int VectorAdd (int ,int ,int ) ;
 double VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int * drawSurfaces ;
 int numfacets ;
 int qfalse ;
 int qtrue ;
 int * surfaceOrigin ;

qboolean VL_GenerateFacetFor3Points( dsurface_t *dsurf, shaderInfo_t *si, lFacet_t *f, drawVert_t *a, drawVert_t *b, drawVert_t *c ) {

 vec3_t dir;
 int i;


 if ( !VL_PlaneFromPoints( &f->plane, a->xyz, b->xyz, c->xyz ) ) {
  f->numpoints = 0;
  return qfalse;
 }

 f->num = numfacets++;

 VectorAdd( a->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[0] );
 VectorAdd( b->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[1] );
 VectorAdd( c->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[2] );

 f->lightmapCoords[0][0] = a->lightmap[0];
 f->lightmapCoords[0][1] = a->lightmap[1];
 f->lightmapCoords[1][0] = b->lightmap[0];
 f->lightmapCoords[1][1] = b->lightmap[1];
 f->lightmapCoords[2][0] = c->lightmap[0];
 f->lightmapCoords[2][1] = c->lightmap[1];

 VL_GenerateBoundaryForPoints( &f->boundaries[0], &f->plane, f->points[0], f->points[1] );
 VL_GenerateBoundaryForPoints( &f->boundaries[1], &f->plane, f->points[1], f->points[2] );
 VL_GenerateBoundaryForPoints( &f->boundaries[2], &f->plane, f->points[2], f->points[0] );

 for (i = 0; i < 3; i++)
 {
  VectorSubtract(f->points[(i+1)%3], f->points[i], dir);
  if (VectorLength(dir) < 0.1)
   return qfalse;
 }

 VL_TextureMatrixFromPoints( f, a, b, c );
 VL_LightmapMatrixFromPoints( dsurf, si, f, a, b, c );

 f->numpoints = 3;

 return qtrue;
}
