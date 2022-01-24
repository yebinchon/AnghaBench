#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {scalar_t__ eType; int /*<<< orphan*/  apos; int /*<<< orphan*/  pos; } ;
struct TYPE_5__ {TYPE_1__ currentState; } ;
typedef  TYPE_2__ centity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int ENTITYNUM_MAX_NORMAL ; 
 scalar_t__ ET_MOVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* cg_entities ; 

void FUNC4( const vec3_t in, int moverNum, int fromTime, int toTime, vec3_t out ) {
	centity_t	*cent;
	vec3_t	oldOrigin, origin, deltaOrigin;
	vec3_t	oldAngles, angles, deltaAngles;

	if ( moverNum <= 0 || moverNum >= ENTITYNUM_MAX_NORMAL ) {
		FUNC2( in, out );
		return;
	}

	cent = &cg_entities[ moverNum ];
	if ( cent->currentState.eType != ET_MOVER ) {
		FUNC2( in, out );
		return;
	}

	FUNC0( &cent->currentState.pos, fromTime, oldOrigin );
	FUNC0( &cent->currentState.apos, fromTime, oldAngles );

	FUNC0( &cent->currentState.pos, toTime, origin );
	FUNC0( &cent->currentState.apos, toTime, angles );

	FUNC3( origin, oldOrigin, deltaOrigin );
	FUNC3( angles, oldAngles, deltaAngles );

	FUNC1( in, deltaOrigin, out );

	// FIXME: origin change when on a rotating object
}