
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_12__ {float* start; float* end; TYPE_1__* trace; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_13__ {int surfaceFlags; } ;
typedef TYPE_3__ shaderInfo_t ;
struct TYPE_14__ {int numBoundaries; float* surface; float** boundaries; } ;
typedef TYPE_4__ cFacet_t ;
struct TYPE_11__ {float hitFraction; int filter; } ;


 float DotProduct (float*,float*) ;
 float ON_EPSILON ;
 int SURF_ALPHASHADOW ;
 int SetFacetFilter (TYPE_2__*,TYPE_3__*,TYPE_4__*,float*) ;
 int VectorClear (int ) ;

void TraceAgainstFacet( traceWork_t *tr, shaderInfo_t *shader, cFacet_t *facet ) {
 int j;
 float d1, d2, d, f;
 vec3_t point;
 float dist;


 if ( facet->numBoundaries < 3 ) {
  return;
 }

 dist = facet->surface[3];


 d1 = DotProduct( tr->start, facet->surface ) - dist;
 if ( d1 > -1 && d1 < 1 ) {
  return;
 }
 d2 = DotProduct( tr->end, facet->surface ) - dist;
 if ( d2 > -1 && d2 < 1 ) {
  return;
 }


 f = ( d1 - ON_EPSILON ) / ( d1 - d2 );
 if ( f <= 0 ) {
  return;
 }
 if ( f >= tr->trace->hitFraction ) {
  return;
 }


 for ( j = 0 ; j < 3 ; j++ ) {
  point[j] = tr->start[j] + f * ( tr->end[j] - tr->start[j] );
 }


 for ( j = 0 ; j < facet->numBoundaries ; j++ ) {

  dist = facet->boundaries[j][3];

  d = DotProduct( point, facet->boundaries[j] );
  if ( d > dist + ON_EPSILON ) {
   break;
  }
 }

 if ( j != facet->numBoundaries ) {
  return;
 }




 if ( shader->surfaceFlags & SURF_ALPHASHADOW ) {
  SetFacetFilter( tr, shader, facet, point );
 } else {

  VectorClear( tr->trace->filter );
  tr->trace->hitFraction = f;
 }



}
