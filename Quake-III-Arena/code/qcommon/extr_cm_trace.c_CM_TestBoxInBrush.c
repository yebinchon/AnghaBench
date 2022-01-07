
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int contents; scalar_t__ fraction; int allsolid; int startsolid; } ;
struct TYPE_9__ {float radius; int offset; scalar_t__ use; } ;
struct TYPE_11__ {scalar_t__** bounds; TYPE_2__ trace; int start; int * offsets; TYPE_1__ sphere; } ;
typedef TYPE_3__ traceWork_t ;
struct TYPE_12__ {float dist; size_t signbits; int normal; } ;
typedef TYPE_4__ cplane_t ;
struct TYPE_13__ {TYPE_4__* plane; } ;
typedef TYPE_5__ cbrushside_t ;
struct TYPE_14__ {int numsides; scalar_t__** bounds; int contents; TYPE_5__* sides; } ;
typedef TYPE_6__ cbrush_t ;


 float DotProduct (int ,int ) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qtrue ;

void CM_TestBoxInBrush( traceWork_t *tw, cbrush_t *brush ) {
 int i;
 cplane_t *plane;
 float dist;
 float d1;
 cbrushside_t *side;
 float t;
 vec3_t startp;

 if (!brush->numsides) {
  return;
 }


 if ( tw->bounds[0][0] > brush->bounds[1][0]
  || tw->bounds[0][1] > brush->bounds[1][1]
  || tw->bounds[0][2] > brush->bounds[1][2]
  || tw->bounds[1][0] < brush->bounds[0][0]
  || tw->bounds[1][1] < brush->bounds[0][1]
  || tw->bounds[1][2] < brush->bounds[0][2]
  ) {
  return;
 }

   if ( tw->sphere.use ) {


  for ( i = 6 ; i < brush->numsides ; i++ ) {
   side = brush->sides + i;
   plane = side->plane;


   dist = plane->dist + tw->sphere.radius;

   t = DotProduct( plane->normal, tw->sphere.offset );
   if ( t > 0 )
   {
    VectorSubtract( tw->start, tw->sphere.offset, startp );
   }
   else
   {
    VectorAdd( tw->start, tw->sphere.offset, startp );
   }
   d1 = DotProduct( startp, plane->normal ) - dist;

   if ( d1 > 0 ) {
    return;
   }
  }
 } else {


  for ( i = 6 ; i < brush->numsides ; i++ ) {
   side = brush->sides + i;
   plane = side->plane;


   dist = plane->dist - DotProduct( tw->offsets[ plane->signbits ], plane->normal );

   d1 = DotProduct( tw->start, plane->normal ) - dist;


   if ( d1 > 0 ) {
    return;
   }
  }
 }


 tw->trace.startsolid = tw->trace.allsolid = qtrue;
 tw->trace.fraction = 0;
 tw->trace.contents = brush->contents;
}
