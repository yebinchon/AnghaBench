
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_7__ {double fraction; int entityNum; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_8__ {int contentmask; scalar_t__* start; scalar_t__* end; scalar_t__* mins; scalar_t__* maxs; int passEntityNum; int capsule; scalar_t__* boxmins; scalar_t__* boxmaxs; TYPE_1__ trace; } ;
typedef TYPE_2__ moveclip_t ;


 int CM_BoxTrace (TYPE_1__*,scalar_t__* const,scalar_t__* const,scalar_t__*,scalar_t__*,int ,int,int) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int ENTITYNUM_NONE ;
 int ENTITYNUM_WORLD ;
 int SV_ClipMoveToEntities (TYPE_2__*) ;
 int VectorCopy (scalar_t__* const,scalar_t__*) ;
 scalar_t__* vec3_origin ;

void SV_Trace( trace_t *results, const vec3_t start, vec3_t mins, vec3_t maxs, const vec3_t end, int passEntityNum, int contentmask, int capsule ) {
 moveclip_t clip;
 int i;

 if ( !mins ) {
  mins = vec3_origin;
 }
 if ( !maxs ) {
  maxs = vec3_origin;
 }

 Com_Memset ( &clip, 0, sizeof ( moveclip_t ) );


 CM_BoxTrace( &clip.trace, start, end, mins, maxs, 0, contentmask, capsule );
 clip.trace.entityNum = clip.trace.fraction != 1.0 ? ENTITYNUM_WORLD : ENTITYNUM_NONE;
 if ( clip.trace.fraction == 0 ) {
  *results = clip.trace;
  return;
 }

 clip.contentmask = contentmask;
 clip.start = start;

 VectorCopy( end, clip.end );
 clip.mins = mins;
 clip.maxs = maxs;
 clip.passEntityNum = passEntityNum;
 clip.capsule = capsule;





 for ( i=0 ; i<3 ; i++ ) {
  if ( end[i] > start[i] ) {
   clip.boxmins[i] = clip.start[i] + clip.mins[i] - 1;
   clip.boxmaxs[i] = clip.end[i] + clip.maxs[i] + 1;
  } else {
   clip.boxmins[i] = clip.end[i] + clip.mins[i] - 1;
   clip.boxmaxs[i] = clip.start[i] + clip.maxs[i] + 1;
  }
 }


 SV_ClipMoveToEntities ( &clip );

 *results = clip.trace;
}
