
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int end; int start; } ;
typedef TYPE_1__ traceWork_t ;
struct TYPE_7__ {int numFacets; scalar_t__ facets; int shader; int radius; int origin; } ;
typedef TYPE_2__ surfaceTest_t ;


 scalar_t__ SphereCull (int ,int ,int ,int ) ;
 int TraceAgainstFacet (TYPE_1__*,int ,scalar_t__) ;
 int c_cullTrace ;
 int c_testFacets ;
 int c_testTrace ;
 int numthreads ;

void TraceAgainstSurface( traceWork_t *tw, surfaceTest_t *surf ) {
 int i;


 if ( SphereCull( tw->start, tw->end, surf->origin, surf->radius ) ) {
  if ( numthreads == 1 ) {
   c_cullTrace++;
  }
  return;
 }

 if ( numthreads == 1 ) {
  c_testTrace++;
  c_testFacets += surf->numFacets;
 }
 for ( i = 0 ; i < surf->numFacets ; i++ ) {
  TraceAgainstFacet( tw, surf->shader, surf->facets + i );
 }
}
