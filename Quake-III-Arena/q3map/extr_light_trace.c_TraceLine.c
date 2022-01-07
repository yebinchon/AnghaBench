
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_12__ {double* filter; double hitFraction; int* hit; int passSolid; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_13__ {int numOpenLeafs; size_t* openLeafNumbers; int patchshadows; TYPE_1__* trace; int end; int start; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_14__ {scalar_t__ patch; } ;
typedef TYPE_3__ surfaceTest_t ;
typedef int qboolean ;
struct TYPE_15__ {int numLeafSurfaces; int firstLeafSurface; } ;
typedef TYPE_4__ dleaf_t ;
typedef int byte ;


 int MAX_MAP_DRAW_SURFS ;
 int TraceAgainstSurface (TYPE_2__*,TYPE_3__*) ;
 int TraceLine_r (int ,int* const,int* const,TYPE_2__*) ;
 int VectorCopy (int* const,int ) ;
 int c_totalTrace ;
 TYPE_4__* dleafs ;
 int* dleafsurfaces ;
 int memset (int*,int ,int) ;
 scalar_t__ noSurfaces ;
 int numDrawSurfaces ;
 int numthreads ;
 int qfalse ;
 int qtrue ;
 TYPE_3__** surfaceTest ;

void TraceLine( const vec3_t start, const vec3_t stop, trace_t *trace, qboolean testAll, traceWork_t *tw ) {
 int r;
 int i, j;
 dleaf_t *leaf;
 float oldHitFrac;
 surfaceTest_t *test;
 int surfaceNum;
 byte surfaceTested[MAX_MAP_DRAW_SURFS/8];
 ;

 if ( numthreads == 1 ) {
  c_totalTrace++;
 }



 trace->filter[0] = 1.0;
 trace->filter[1] = 1.0;
 trace->filter[2] = 1.0;

 VectorCopy( start, tw->start );
 VectorCopy( stop, tw->end );
 tw->trace = trace;

 tw->numOpenLeafs = 0;

 trace->passSolid = qfalse;
 trace->hitFraction = 1.0;

 r = TraceLine_r( 0, start, stop, tw );




 if ( r && !testAll ) {
  return;
 }

 if ( noSurfaces ) {
  return;
 }

 memset( surfaceTested, 0, (numDrawSurfaces+7)/8 );
 oldHitFrac = trace->hitFraction;

 for ( i = 0 ; i < tw->numOpenLeafs ; i++ ) {
  leaf = &dleafs[ tw->openLeafNumbers[ i ] ];
  for ( j = 0 ; j < leaf->numLeafSurfaces ; j++ ) {
   surfaceNum = dleafsurfaces[ leaf->firstLeafSurface + j ];


   if ( surfaceTested[ surfaceNum>>3 ] & ( 1 << ( surfaceNum & 7) ) ) {
    continue;
   }
   surfaceTested[ surfaceNum>>3 ] |= ( 1 << ( surfaceNum & 7 ) );

   test = surfaceTest[ surfaceNum ];
   if ( !test ) {
    continue;
   }

   if ( !tw->patchshadows && test->patch ) {
    continue;
   }
   TraceAgainstSurface( tw, test );
  }


  if ( trace->hitFraction < oldHitFrac ) {
   trace->passSolid = qtrue;
   break;
  }
 }

 for ( i = 0 ; i < 3 ; i++ ) {
  trace->hit[i] = start[i] + ( stop[i] - start[i] ) * trace->hitFraction;
 }
}
