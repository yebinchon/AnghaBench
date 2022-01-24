#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_7__ {float yawAngle; float pitchAngle; void* pitching; void* yawing; } ;
struct TYPE_6__ {float yawAngle; void* yawing; } ;
struct TYPE_8__ {int legsAnim; int torsoAnim; TYPE_2__ torso; TYPE_1__ legs; int /*<<< orphan*/  viewAngles; } ;
typedef  TYPE_3__ playerInfo_t ;

/* Variables and functions */
 int ANIM_TOGGLEBIT ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float**) ; 
 int LEGS_IDLE ; 
 size_t PITCH ; 
 float SWINGSPEED ; 
 int TORSO_STAND ; 
 float FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (float,int,int,float,float*,void**) ; 
 int /*<<< orphan*/  FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float*) ; 
 size_t YAW ; 
 void* qtrue ; 

__attribute__((used)) static void FUNC7( playerInfo_t *pi, vec3_t legs[3], vec3_t torso[3], vec3_t head[3] ) {
	vec3_t		legsAngles, torsoAngles, headAngles;
	float		dest;
	float		adjust;

	FUNC6( pi->viewAngles, headAngles );
	headAngles[YAW] = FUNC0( headAngles[YAW] );
	FUNC5( legsAngles );
	FUNC5( torsoAngles );

	// --------- yaw -------------

	// allow yaw to drift a bit
	if ( ( pi->legsAnim & ~ANIM_TOGGLEBIT ) != LEGS_IDLE 
		|| ( pi->torsoAnim & ~ANIM_TOGGLEBIT ) != TORSO_STAND  ) {
		// if not standing still, always point all in the same direction
		pi->torso.yawing = qtrue;	// always center
		pi->torso.pitching = qtrue;	// always center
		pi->legs.yawing = qtrue;	// always center
	}

	// adjust legs for movement dir
	adjust = FUNC3( pi );
	legsAngles[YAW] = headAngles[YAW] + adjust;
	torsoAngles[YAW] = headAngles[YAW] + 0.25 * adjust;


	// torso
	FUNC4( torsoAngles[YAW], 25, 90, SWINGSPEED, &pi->torso.yawAngle, &pi->torso.yawing );
	FUNC4( legsAngles[YAW], 40, 90, SWINGSPEED, &pi->legs.yawAngle, &pi->legs.yawing );

	torsoAngles[YAW] = pi->torso.yawAngle;
	legsAngles[YAW] = pi->legs.yawAngle;

	// --------- pitch -------------

	// only show a fraction of the pitch angle in the torso
	if ( headAngles[PITCH] > 180 ) {
		dest = (-360 + headAngles[PITCH]) * 0.75;
	} else {
		dest = headAngles[PITCH] * 0.75;
	}
	FUNC4( dest, 15, 30, 0.1f, &pi->torso.pitchAngle, &pi->torso.pitching );
	torsoAngles[PITCH] = pi->torso.pitchAngle;

	// pull the angles back out of the hierarchial chain
	FUNC1( headAngles, torsoAngles, headAngles );
	FUNC1( torsoAngles, legsAngles, torsoAngles );
	FUNC2( legsAngles, legs );
	FUNC2( torsoAngles, torso );
	FUNC2( headAngles, head );
}