#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_3__ {int trType; int trTime; int trDuration; int /*<<< orphan*/  trDelta; } ;
typedef  TYPE_1__ trajectory_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 float DEFAULT_GRAVITY ; 
 int /*<<< orphan*/  ERR_DROP ; 
 float M_PI ; 
#define  TR_GRAVITY 133 
#define  TR_INTERPOLATE 132 
#define  TR_LINEAR 131 
#define  TR_LINEAR_STOP 130 
#define  TR_SINE 129 
#define  TR_STATIONARY 128 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,float*) ; 
 float FUNC4 (float) ; 

void FUNC5( const trajectory_t *tr, int atTime, vec3_t result ) {
	float	deltaTime;
	float	phase;

	switch( tr->trType ) {
	case TR_STATIONARY:
	case TR_INTERPOLATE:
		FUNC1( result );
		break;
	case TR_LINEAR:
		FUNC2( tr->trDelta, result );
		break;
	case TR_SINE:
		deltaTime = ( atTime - tr->trTime ) / (float) tr->trDuration;
		phase = FUNC4( deltaTime * M_PI * 2 );	// derivative of sin = cos
		phase *= 0.5;
		FUNC3( tr->trDelta, phase, result );
		break;
	case TR_LINEAR_STOP:
		if ( atTime > tr->trTime + tr->trDuration ) {
			FUNC1( result );
			return;
		}
		FUNC2( tr->trDelta, result );
		break;
	case TR_GRAVITY:
		deltaTime = ( atTime - tr->trTime ) * 0.001;	// milliseconds to seconds
		FUNC2( tr->trDelta, result );
		result[2] -= DEFAULT_GRAVITY * deltaTime;		// FIXME: local gravity...
		break;
	default:
		FUNC0( ERR_DROP, "BG_EvaluateTrajectoryDelta: unknown trType: %i", tr->trTime );
		break;
	}
}