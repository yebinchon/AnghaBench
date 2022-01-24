#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_17__ {double fraction; int /*<<< orphan*/  endpos; } ;
typedef  TYPE_1__ trace_t ;
struct TYPE_19__ {float* origin; float* lightingOrigin; int /*<<< orphan*/  axis; int /*<<< orphan*/  renderfx; } ;
struct TYPE_16__ {scalar_t__ trType; } ;
struct TYPE_18__ {int endTime; int leFlags; scalar_t__ leBounceSoundType; TYPE_3__ refEntity; TYPE_15__ angles; TYPE_15__ pos; } ;
typedef  TYPE_2__ localEntity_t ;
struct TYPE_20__ {int time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__*,int,float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int,int /*<<< orphan*/ ) ; 
 int CONTENTS_NODROP ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 scalar_t__ LEBS_BLOOD ; 
 int LEF_TUMBLE ; 
 int /*<<< orphan*/  RF_LIGHTING_ORIGIN ; 
 int SINK_TIME ; 
 scalar_t__ TR_STATIONARY ; 
 int /*<<< orphan*/  FUNC8 (float*,float*) ; 
 TYPE_4__ cg ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

void FUNC11( localEntity_t *le ) {
	vec3_t	newOrigin;
	trace_t	trace;

	if ( le->pos.trType == TR_STATIONARY ) {
		// sink into the ground if near the removal time
		int		t;
		float	oldZ;
		
		t = le->endTime - cg.time;
		if ( t < SINK_TIME ) {
			// we must use an explicit lighting origin, otherwise the
			// lighting would be lost as soon as the origin went
			// into the ground
			FUNC8( le->refEntity.origin, le->refEntity.lightingOrigin );
			le->refEntity.renderfx |= RF_LIGHTING_ORIGIN;
			oldZ = le->refEntity.origin[2];
			le->refEntity.origin[2] -= 16 * ( 1.0 - (float)t / SINK_TIME );
			FUNC10( &le->refEntity );
			le->refEntity.origin[2] = oldZ;
		} else {
			FUNC10( &le->refEntity );
		}

		return;
	}

	// calculate new position
	FUNC1( &le->pos, cg.time, newOrigin );

	// trace a line from previous position to new position
	FUNC7( &trace, le->refEntity.origin, NULL, NULL, newOrigin, -1, CONTENTS_SOLID );
	if ( trace.fraction == 1.0 ) {
		// still in free fall
		FUNC8( newOrigin, le->refEntity.origin );

		if ( le->leFlags & LEF_TUMBLE ) {
			vec3_t angles;

			FUNC1( &le->angles, cg.time, angles );
			FUNC0( angles, le->refEntity.axis );
		}

		FUNC10( &le->refEntity );

		// add a blood trail
		if ( le->leBounceSoundType == LEBS_BLOOD ) {
			FUNC2( le );
		}

		return;
	}

	// if it is in a nodrop zone, remove it
	// this keeps gibs from waiting at the bottom of pits of death
	// and floating levels
	if ( FUNC9( trace.endpos, 0 ) & CONTENTS_NODROP ) {
		FUNC5( le );
		return;
	}

	// leave a mark
	FUNC3( le, &trace );

	// do a bouncy sound
	FUNC4( le, &trace );

	// reflect the velocity on the trace plane
	FUNC6( le, &trace );

	FUNC10( &le->refEntity );
}