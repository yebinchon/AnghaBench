
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ yawAngle; void* pitching; scalar_t__ pitchAngle; void* yawing; } ;
struct TYPE_11__ {TYPE_4__ torso; TYPE_4__ legs; } ;
struct TYPE_10__ {size_t clientNum; int number; int apos; int pos; int torsoAnim; int legsAnim; } ;
struct TYPE_12__ {int errorTime; TYPE_2__ pe; TYPE_1__ currentState; scalar_t__* rawAngles; int lerpAngles; scalar_t__* rawOrigin; int lerpOrigin; void* extrapolated; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_16__ {int time; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int * clientinfo; } ;


 int BG_EvaluateTrajectory (int *,int ,int ) ;
 int CG_ClearLerpFrame (int *,TYPE_4__*,int ) ;
 int CG_Printf (char*,int ,scalar_t__) ;
 size_t PITCH ;
 int VectorCopy (int ,scalar_t__*) ;
 size_t YAW ;
 TYPE_7__ cg ;
 TYPE_6__ cg_debugPosition ;
 TYPE_5__ cgs ;
 int memset (TYPE_4__*,int ,int) ;
 void* qfalse ;

void CG_ResetPlayerEntity( centity_t *cent ) {
 cent->errorTime = -99999;
 cent->extrapolated = qfalse;

 CG_ClearLerpFrame( &cgs.clientinfo[ cent->currentState.clientNum ], &cent->pe.legs, cent->currentState.legsAnim );
 CG_ClearLerpFrame( &cgs.clientinfo[ cent->currentState.clientNum ], &cent->pe.torso, cent->currentState.torsoAnim );

 BG_EvaluateTrajectory( &cent->currentState.pos, cg.time, cent->lerpOrigin );
 BG_EvaluateTrajectory( &cent->currentState.apos, cg.time, cent->lerpAngles );

 VectorCopy( cent->lerpOrigin, cent->rawOrigin );
 VectorCopy( cent->lerpAngles, cent->rawAngles );

 memset( &cent->pe.legs, 0, sizeof( cent->pe.legs ) );
 cent->pe.legs.yawAngle = cent->rawAngles[YAW];
 cent->pe.legs.yawing = qfalse;
 cent->pe.legs.pitchAngle = 0;
 cent->pe.legs.pitching = qfalse;

 memset( &cent->pe.torso, 0, sizeof( cent->pe.legs ) );
 cent->pe.torso.yawAngle = cent->rawAngles[YAW];
 cent->pe.torso.yawing = qfalse;
 cent->pe.torso.pitchAngle = cent->rawAngles[PITCH];
 cent->pe.torso.pitching = qfalse;

 if ( cg_debugPosition.integer ) {
  CG_Printf("%i ResetPlayerEntity yaw=%i\n", cent->currentState.number, cent->pe.torso.yawAngle );
 }
}
