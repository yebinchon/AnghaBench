#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_19__ {int* endpos; double fraction; } ;
typedef  TYPE_4__ trace_t ;
struct TYPE_20__ {int* oldorigin; int* origin; int /*<<< orphan*/  axis; int /*<<< orphan*/  hModel; int /*<<< orphan*/  customShader; int /*<<< orphan*/  reType; } ;
typedef  TYPE_5__ refEntity_t ;
struct TYPE_17__ {scalar_t__ weapon; int /*<<< orphan*/  number; } ;
struct TYPE_21__ {float* lerpAngles; int* lerpOrigin; TYPE_2__ currentState; } ;
typedef  TYPE_6__ centity_t ;
typedef  int /*<<< orphan*/  beam ;
struct TYPE_18__ {int /*<<< orphan*/  lightningExplosionModel; int /*<<< orphan*/  lightningShader; } ;
struct TYPE_22__ {TYPE_3__ media; } ;
struct TYPE_16__ {int /*<<< orphan*/  clientNum; } ;
struct TYPE_15__ {float* refdefViewAngles; TYPE_1__ predictedPlayerState; } ;
struct TYPE_14__ {double value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DEFAULT_VIEWHEIGHT ; 
 int LIGHTNING_RANGE ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int /*<<< orphan*/  RT_LIGHTNING ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*) ; 
 scalar_t__ WP_LIGHTNING ; 
 TYPE_11__ cg ; 
 TYPE_10__ cg_trueLightning ; 
 TYPE_9__ cgs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC10( centity_t *cent, vec3_t origin ) {
	trace_t  trace;
	refEntity_t  beam;
	vec3_t   forward;
	vec3_t   muzzlePoint, endPoint;

	if (cent->currentState.weapon != WP_LIGHTNING) {
		return;
	}

	FUNC7( &beam, 0, sizeof( beam ) );

	// CPMA  "true" lightning
	if ((cent->currentState.number == cg.predictedPlayerState.clientNum) && (cg_trueLightning.value != 0)) {
		vec3_t angle;
		int i;

		for (i = 0; i < 3; i++) {
			float a = cent->lerpAngles[i] - cg.refdefViewAngles[i];
			if (a > 180) {
				a -= 360;
			}
			if (a < -180) {
				a += 360;
			}

			angle[i] = cg.refdefViewAngles[i] + a * (1.0 - cg_trueLightning.value);
			if (angle[i] < 0) {
				angle[i] += 360;
			}
			if (angle[i] > 360) {
				angle[i] -= 360;
			}
		}

		FUNC0(angle, forward, NULL, NULL );
		FUNC3(cent->lerpOrigin, muzzlePoint );
//		VectorCopy(cg.refdef.vieworg, muzzlePoint );
	} else {
		// !CPMA
		FUNC0( cent->lerpAngles, forward, NULL, NULL );
		FUNC3(cent->lerpOrigin, muzzlePoint );
	}

	// FIXME: crouch
	muzzlePoint[2] += DEFAULT_VIEWHEIGHT;

	FUNC4( muzzlePoint, 14, forward, muzzlePoint );

	// project forward by the lightning range
	FUNC4( muzzlePoint, LIGHTNING_RANGE, forward, endPoint );

	// see if it hit a wall
	FUNC2( &trace, muzzlePoint, vec3_origin, vec3_origin, endPoint, 
		cent->currentState.number, MASK_SHOT );

	// this is the endpoint
	FUNC3( trace.endpos, beam.oldorigin );

	// use the provided origin, even though it may be slightly
	// different than the muzzle origin
	FUNC3( origin, beam.origin );

	beam.reType = RT_LIGHTNING;
	beam.customShader = cgs.media.lightningShader;
	FUNC9( &beam );

	// add the impact flare if it hit something
	if ( trace.fraction < 1.0 ) {
		vec3_t	angles;
		vec3_t	dir;

		FUNC6( beam.oldorigin, beam.origin, dir );
		FUNC5( dir );

		FUNC7( &beam, 0, sizeof( beam ) );
		beam.hModel = cgs.media.lightningExplosionModel;

		FUNC4( trace.endpos, -16, dir, beam.origin );

		// make a random orientation
		angles[0] = FUNC8() % 360;
		angles[1] = FUNC8() % 360;
		angles[2] = FUNC8() % 360;
		FUNC1( angles, beam.axis );
		FUNC9( &beam );
	}
}