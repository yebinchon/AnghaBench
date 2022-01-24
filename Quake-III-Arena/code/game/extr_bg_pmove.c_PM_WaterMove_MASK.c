#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_12__ {int upmove; float forwardmove; float rightmove; } ;
struct TYPE_11__ {scalar_t__ watertype; TYPE_3__* ps; TYPE_6__ cmd; } ;
struct TYPE_7__ {int /*<<< orphan*/  normal; } ;
struct TYPE_8__ {TYPE_1__ plane; } ;
struct TYPE_10__ {float* forward; float* right; TYPE_2__ groundTrace; scalar_t__ groundPlane; } ;
struct TYPE_9__ {int* velocity; float speed; } ;

/* Variables and functions */
 scalar_t__ CONTENTS_SLIME ; 
 scalar_t__ CONTENTS_WATER ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OVERCLIP ; 
 int /*<<< orphan*/  FUNC1 (float*,float,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 float FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (float*,float*) ; 
 float FUNC9 (int*) ; 
 float FUNC10 (float*) ; 
 int /*<<< orphan*/  FUNC11 (float*,float,float*) ; 
 TYPE_5__* pm ; 
 float pm_swimScale ; 
 int /*<<< orphan*/  pm_wateraccelerate ; 
 TYPE_4__ pml ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC12( void ) {
	int		i;
	vec3_t	wishvel;
	float	wishspeed;
	vec3_t	wishdir;
	float	scale;
	float	vel;

	if ( FUNC2() ) {
		FUNC7();
		return;
	}
#if 0
	// jump = head for surface
	if ( pm->cmd.upmove >= 10 ) {
		if (pm->ps->velocity[2] > -300) {
			if ( pm->watertype == CONTENTS_WATER ) {
				pm->ps->velocity[2] = 100;
			} else if (pm->watertype == CONTENTS_SLIME) {
				pm->ps->velocity[2] = 80;
			} else {
				pm->ps->velocity[2] = 50;
			}
		}
	}
#endif
	FUNC5 ();

	scale = FUNC4( &pm->cmd );
	//
	// user intentions
	//
	if ( !scale ) {
		wishvel[0] = 0;
		wishvel[1] = 0;
		wishvel[2] = -60;		// sink towards bottom
	} else {
		for (i=0 ; i<3 ; i++)
			wishvel[i] = scale * pml.forward[i]*pm->cmd.forwardmove + scale * pml.right[i]*pm->cmd.rightmove;

		wishvel[2] += scale * pm->cmd.upmove;
	}

	FUNC8 (wishvel, wishdir);
	wishspeed = FUNC10(wishdir);

	if ( wishspeed > pm->ps->speed * pm_swimScale ) {
		wishspeed = pm->ps->speed * pm_swimScale;
	}

	FUNC1 (wishdir, wishspeed, pm_wateraccelerate);

	// make sure we can go up slopes easily under water
	if ( pml.groundPlane && FUNC0( pm->ps->velocity, pml.groundTrace.plane.normal ) < 0 ) {
		vel = FUNC9(pm->ps->velocity);
		// slide along the ground plane
		FUNC3 (pm->ps->velocity, pml.groundTrace.plane.normal, 
			pm->ps->velocity, OVERCLIP );

		FUNC10(pm->ps->velocity);
		FUNC11(pm->ps->velocity, vel, pm->ps->velocity);
	}

	FUNC6( qfalse );
}