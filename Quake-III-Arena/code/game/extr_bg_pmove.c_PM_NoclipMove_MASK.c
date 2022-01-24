#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_8__ {float forwardmove; float rightmove; scalar_t__ upmove; } ;
struct TYPE_7__ {TYPE_1__* ps; TYPE_4__ cmd; } ;
struct TYPE_6__ {float frametime; float* forward; float* right; } ;
struct TYPE_5__ {float* velocity; int /*<<< orphan*/  origin; int /*<<< orphan*/  viewheight; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_VIEWHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (float*,float,int /*<<< orphan*/ ) ; 
 float FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*) ; 
 float FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float,float*,int /*<<< orphan*/ ) ; 
 float FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float,float*) ; 
 TYPE_3__* pm ; 
 int /*<<< orphan*/  pm_accelerate ; 
 double pm_friction ; 
 float pm_stopspeed ; 
 TYPE_2__ pml ; 
 float* vec3_origin ; 

__attribute__((used)) static void FUNC7( void ) {
	float	speed, drop, friction, control, newspeed;
	int			i;
	vec3_t		wishvel;
	float		fmove, smove;
	vec3_t		wishdir;
	float		wishspeed;
	float		scale;

	pm->ps->viewheight = DEFAULT_VIEWHEIGHT;

	// friction

	speed = FUNC3 (pm->ps->velocity);
	if (speed < 1)
	{
		FUNC2 (vec3_origin, pm->ps->velocity);
	}
	else
	{
		drop = 0;

		friction = pm_friction*1.5;	// extra friction
		control = speed < pm_stopspeed ? pm_stopspeed : speed;
		drop += control*friction*pml.frametime;

		// scale the velocity
		newspeed = speed - drop;
		if (newspeed < 0)
			newspeed = 0;
		newspeed /= speed;

		FUNC6 (pm->ps->velocity, newspeed, pm->ps->velocity);
	}

	// accelerate
	scale = FUNC1( &pm->cmd );

	fmove = pm->cmd.forwardmove;
	smove = pm->cmd.rightmove;
	
	for (i=0 ; i<3 ; i++)
		wishvel[i] = pml.forward[i]*fmove + pml.right[i]*smove;
	wishvel[2] += pm->cmd.upmove;

	FUNC2 (wishvel, wishdir);
	wishspeed = FUNC5(wishdir);
	wishspeed *= scale;

	FUNC0( wishdir, wishspeed, pm_accelerate );

	// move
	FUNC4 (pm->ps->origin, pml.frametime, pm->ps->velocity, pm->ps->origin);
}