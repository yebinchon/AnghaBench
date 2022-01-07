
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_5__ {scalar_t__* hit; int* filter; } ;
typedef TYPE_1__ trace_t ;
typedef int traceWork_t ;
struct TYPE_6__ {scalar_t__** bounds; } ;
typedef TYPE_2__ skyBrush_t ;


 int MAX_WORLD_COORD ;
 int TraceLine (int* const,int*,TYPE_1__*,int ,int *) ;
 int VectorClear (int*) ;
 int VectorMA (int* const,int,int ,int*) ;
 int c_sunHit ;
 int c_sunMiss ;
 int numSkyBrushes ;
 int numthreads ;
 int qtrue ;
 TYPE_2__* skyBrushes ;
 int sunDirection ;
 int* sunLight ;

void SunToPoint( const vec3_t origin, traceWork_t *tw, vec3_t addLight ) {
 int i;
 trace_t trace;
 skyBrush_t *b;
 vec3_t end;

 if ( !numSkyBrushes ) {
  VectorClear( addLight );
  return;
 }

 VectorMA( origin, MAX_WORLD_COORD * 2, sunDirection, end );

 TraceLine( origin, end, &trace, qtrue, tw );


 for ( i = 0 ; i < numSkyBrushes ; i++) {
  b = &skyBrushes[ i ];


  if ( trace.hit[0] < b->bounds[0][0]
   || trace.hit[0] > b->bounds[1][0]
   || trace.hit[1] < b->bounds[0][1]
   || trace.hit[1] > b->bounds[1][1]
   || trace.hit[2] < b->bounds[0][2]
   || trace.hit[2] > b->bounds[1][2] ) {
   continue;
  }



  TraceLine( origin, trace.hit, &trace, qtrue, tw );


  if ( numthreads == 1 ) {
   c_sunHit++;
  }
  addLight[0] = trace.filter[0] * sunLight[0];
  addLight[1] = trace.filter[1] * sunLight[1];
  addLight[2] = trace.filter[2] * sunLight[2];

  return;
 }

 if ( numthreads == 1 ) {
  c_sunMiss++;
 }

 VectorClear( addLight );
}
