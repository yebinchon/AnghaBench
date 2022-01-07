
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_11__ {double fraction; int* endpos; } ;
typedef TYPE_3__ trace_t ;
struct TYPE_10__ {int* vieworg; } ;
struct TYPE_9__ {scalar_t__* stats; int clientNum; scalar_t__ viewheight; } ;
struct TYPE_15__ {int* refdefViewAngles; TYPE_2__ refdef; TYPE_1__ predictedPlayerState; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {float value; } ;


 int AngleVectors (int*,int*,int*,int*) ;
 int CG_Trace (TYPE_3__*,int*,int*,int*,int*,int ,int ) ;
 float FOCUS_DISTANCE ;
 int MASK_SOLID ;
 int M_PI ;
 size_t PITCH ;
 size_t STAT_DEAD_YAW ;
 size_t STAT_HEALTH ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,float,int*,int*) ;
 int VectorSubtract (int*,int*,int*) ;
 size_t YAW ;
 int atan2 (int,float) ;
 TYPE_7__ cg ;
 TYPE_6__ cg_cameraMode ;
 TYPE_5__ cg_thirdPersonAngle ;
 TYPE_4__ cg_thirdPersonRange ;
 float cos (int) ;
 float sin (int) ;
 float sqrt (int) ;

__attribute__((used)) static void CG_OffsetThirdPersonView( void ) {
 vec3_t forward, right, up;
 vec3_t view;
 vec3_t focusAngles;
 trace_t trace;
 static vec3_t mins = { -4, -4, -4 };
 static vec3_t maxs = { 4, 4, 4 };
 vec3_t focusPoint;
 float focusDist;
 float forwardScale, sideScale;

 cg.refdef.vieworg[2] += cg.predictedPlayerState.viewheight;

 VectorCopy( cg.refdefViewAngles, focusAngles );


 if ( cg.predictedPlayerState.stats[STAT_HEALTH] <= 0 ) {
  focusAngles[YAW] = cg.predictedPlayerState.stats[STAT_DEAD_YAW];
  cg.refdefViewAngles[YAW] = cg.predictedPlayerState.stats[STAT_DEAD_YAW];
 }

 if ( focusAngles[PITCH] > 45 ) {
  focusAngles[PITCH] = 45;
 }
 AngleVectors( focusAngles, forward, ((void*)0), ((void*)0) );

 VectorMA( cg.refdef.vieworg, FOCUS_DISTANCE, forward, focusPoint );

 VectorCopy( cg.refdef.vieworg, view );

 view[2] += 8;

 cg.refdefViewAngles[PITCH] *= 0.5;

 AngleVectors( cg.refdefViewAngles, forward, right, up );

 forwardScale = cos( cg_thirdPersonAngle.value / 180 * M_PI );
 sideScale = sin( cg_thirdPersonAngle.value / 180 * M_PI );
 VectorMA( view, -cg_thirdPersonRange.value * forwardScale, forward, view );
 VectorMA( view, -cg_thirdPersonRange.value * sideScale, right, view );




 if (!cg_cameraMode.integer) {
  CG_Trace( &trace, cg.refdef.vieworg, mins, maxs, view, cg.predictedPlayerState.clientNum, MASK_SOLID );

  if ( trace.fraction != 1.0 ) {
   VectorCopy( trace.endpos, view );
   view[2] += (1.0 - trace.fraction) * 32;



   CG_Trace( &trace, cg.refdef.vieworg, mins, maxs, view, cg.predictedPlayerState.clientNum, MASK_SOLID );
   VectorCopy( trace.endpos, view );
  }
 }


 VectorCopy( view, cg.refdef.vieworg );


 VectorSubtract( focusPoint, cg.refdef.vieworg, focusPoint );
 focusDist = sqrt( focusPoint[0] * focusPoint[0] + focusPoint[1] * focusPoint[1] );
 if ( focusDist < 1 ) {
  focusDist = 1;
 }
 cg.refdefViewAngles[PITCH] = -180 / M_PI * atan2( focusPoint[2], focusDist );
 cg.refdefViewAngles[YAW] -= cg_thirdPersonAngle.value;
}
