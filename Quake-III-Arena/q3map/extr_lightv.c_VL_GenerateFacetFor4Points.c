
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int vec3_t ;
typedef int shaderInfo_t ;
typedef int qboolean ;
struct TYPE_21__ {float dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_22__ {int numpoints; scalar_t__ num; int * points; TYPE_1__ plane; int * boundaries; int ** lightmapCoords; } ;
typedef TYPE_2__ lFacet_t ;
typedef int dsurface_t ;
struct TYPE_23__ {int * lightmap; int xyz; } ;
typedef TYPE_3__ drawVert_t ;


 float DotProduct (int ,int ) ;
 scalar_t__ PLANAR_EPSILON ;
 int Plane_Equal (TYPE_1__*,TYPE_1__*,int ) ;
 int VL_GenerateBoundaryForPoints (int *,TYPE_1__*,int ,int ) ;
 int VL_LightmapMatrixFromPoints (int *,int *,TYPE_2__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 int VL_PlaneFromPoints (TYPE_1__*,int ,int ,int ) ;
 int VL_TextureMatrixFromPoints (TYPE_2__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 int VectorAdd (int ,int ,int ) ;
 double VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int * drawSurfaces ;
 scalar_t__ fabs (float) ;
 int numfacets ;
 int qfalse ;
 int qtrue ;
 int * surfaceOrigin ;

qboolean VL_GenerateFacetFor4Points( dsurface_t *dsurf, shaderInfo_t *si, lFacet_t *f, drawVert_t *a, drawVert_t *b, drawVert_t *c, drawVert_t *d ) {
 float dist;
 vec3_t dir;
 int i;
 plane_t plane;


 if ( !VL_PlaneFromPoints( &f->plane, a->xyz, b->xyz, c->xyz ) ) {
  f->numpoints = 0;
  return qfalse;
 }


 dist = DotProduct( d->xyz, f->plane.normal ) - f->plane.dist;
 if ( fabs( dist ) > PLANAR_EPSILON ) {
  f->numpoints = 0;
  return qfalse;
 }

 VectorAdd( a->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[0] );
 VectorAdd( b->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[1] );
 VectorAdd( c->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[2] );
 VectorAdd( d->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[3] );

 for (i = 1; i < 4; i++)
 {
  if ( !VL_PlaneFromPoints( &plane, f->points[i], f->points[(i+1) % 4], f->points[(i+2) % 4]) ) {
   f->numpoints = 0;
   return qfalse;
  }

  if (!Plane_Equal(&f->plane, &plane, qfalse)) {
   f->numpoints = 0;
   return qfalse;
  }
 }

 f->lightmapCoords[0][0] = a->lightmap[0];
 f->lightmapCoords[0][1] = a->lightmap[1];
 f->lightmapCoords[1][0] = b->lightmap[0];
 f->lightmapCoords[1][1] = b->lightmap[1];
 f->lightmapCoords[2][0] = c->lightmap[0];
 f->lightmapCoords[2][1] = c->lightmap[1];
 f->lightmapCoords[3][0] = d->lightmap[0];
 f->lightmapCoords[3][1] = d->lightmap[1];

 VL_GenerateBoundaryForPoints( &f->boundaries[0], &f->plane, f->points[0], f->points[1] );
 VL_GenerateBoundaryForPoints( &f->boundaries[1], &f->plane, f->points[1], f->points[2] );
 VL_GenerateBoundaryForPoints( &f->boundaries[2], &f->plane, f->points[2], f->points[3] );
 VL_GenerateBoundaryForPoints( &f->boundaries[3], &f->plane, f->points[3], f->points[0] );

 for (i = 0; i < 4; i++)
 {
  VectorSubtract(f->points[(i+1)%4], f->points[i], dir);
  if (VectorLength(dir) < 0.1)
   return qfalse;
 }

 VL_TextureMatrixFromPoints( f, a, b, c );
 VL_LightmapMatrixFromPoints( dsurf, si, f, a, b, c );

 f->num = numfacets++;
 f->numpoints = 4;

 return qtrue;
}
