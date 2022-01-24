#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ yawAngle; void* pitching; scalar_t__ pitchAngle; void* yawing; } ;
struct TYPE_11__ {TYPE_4__ torso; TYPE_4__ legs; } ;
struct TYPE_10__ {size_t clientNum; int /*<<< orphan*/  number; int /*<<< orphan*/  apos; int /*<<< orphan*/  pos; int /*<<< orphan*/  torsoAnim; int /*<<< orphan*/  legsAnim; } ;
struct TYPE_12__ {int errorTime; TYPE_2__ pe; TYPE_1__ currentState; scalar_t__* rawAngles; int /*<<< orphan*/  lerpAngles; scalar_t__* rawOrigin; int /*<<< orphan*/  lerpOrigin; void* extrapolated; } ;
typedef  TYPE_3__ centity_t ;
struct TYPE_16__ {int /*<<< orphan*/  time; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int /*<<< orphan*/ * clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 size_t YAW ; 
 TYPE_7__ cg ; 
 TYPE_6__ cg_debugPosition ; 
 TYPE_5__ cgs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 void* qfalse ; 

void FUNC5( centity_t *cent ) {
	cent->errorTime = -99999;		// guarantee no error decay added
	cent->extrapolated = qfalse;	

	FUNC1( &cgs.clientinfo[ cent->currentState.clientNum ], &cent->pe.legs, cent->currentState.legsAnim );
	FUNC1( &cgs.clientinfo[ cent->currentState.clientNum ], &cent->pe.torso, cent->currentState.torsoAnim );

	FUNC0( &cent->currentState.pos, cg.time, cent->lerpOrigin );
	FUNC0( &cent->currentState.apos, cg.time, cent->lerpAngles );

	FUNC3( cent->lerpOrigin, cent->rawOrigin );
	FUNC3( cent->lerpAngles, cent->rawAngles );

	FUNC4( &cent->pe.legs, 0, sizeof( cent->pe.legs ) );
	cent->pe.legs.yawAngle = cent->rawAngles[YAW];
	cent->pe.legs.yawing = qfalse;
	cent->pe.legs.pitchAngle = 0;
	cent->pe.legs.pitching = qfalse;

	FUNC4( &cent->pe.torso, 0, sizeof( cent->pe.legs ) );
	cent->pe.torso.yawAngle = cent->rawAngles[YAW];
	cent->pe.torso.yawing = qfalse;
	cent->pe.torso.pitchAngle = cent->rawAngles[PITCH];
	cent->pe.torso.pitching = qfalse;

	if ( cg_debugPosition.integer ) {
		FUNC2("%i ResetPlayerEntity yaw=%i\n", cent->currentState.number, cent->pe.torso.yawAngle );
	}
}