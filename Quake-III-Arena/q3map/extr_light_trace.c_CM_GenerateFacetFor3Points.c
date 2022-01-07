
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_11__ {int xyz; } ;
typedef TYPE_1__ drawVert_t ;
struct TYPE_12__ {int numBoundaries; int * points; int surface; int * boundaries; } ;
typedef TYPE_2__ cFacet_t ;


 int CM_GenerateBoundaryForPoints (int ,int ,int ,int ) ;
 int PlaneFromPoints (int ,int ,int ,int ) ;
 int TextureMatrixFromPoints (TYPE_2__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean CM_GenerateFacetFor3Points( cFacet_t *f, drawVert_t *a, drawVert_t *b, drawVert_t *c ) {

 if ( !PlaneFromPoints( f->surface, a->xyz, b->xyz, c->xyz ) ) {
  f->numBoundaries = 0;
  return qfalse;
 }


 f->numBoundaries = 3;

 CM_GenerateBoundaryForPoints( f->boundaries[0], f->surface, a->xyz, b->xyz );
 CM_GenerateBoundaryForPoints( f->boundaries[1], f->surface, b->xyz, c->xyz );
 CM_GenerateBoundaryForPoints( f->boundaries[2], f->surface, c->xyz, a->xyz );

 VectorCopy( a->xyz, f->points[0] );
 VectorCopy( b->xyz, f->points[1] );
 VectorCopy( c->xyz, f->points[2] );

 TextureMatrixFromPoints( f, a, b, c );

 return qtrue;
}
