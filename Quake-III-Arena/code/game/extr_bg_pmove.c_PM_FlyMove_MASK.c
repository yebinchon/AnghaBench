#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_6__ {float forwardmove; float rightmove; float upmove; } ;
struct TYPE_5__ {TYPE_3__ cmd; } ;
struct TYPE_4__ {float* forward; float* right; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float,int /*<<< orphan*/ ) ; 
 float FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 float FUNC5 (float*) ; 
 TYPE_2__* pm ; 
 int /*<<< orphan*/  pm_flyaccelerate ; 
 TYPE_1__ pml ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC6( void ) {
	int		i;
	vec3_t	wishvel;
	float	wishspeed;
	vec3_t	wishdir;
	float	scale;

	// normal slowdown
	FUNC2 ();

	scale = FUNC1( &pm->cmd );
	//
	// user intentions
	//
	if ( !scale ) {
		wishvel[0] = 0;
		wishvel[1] = 0;
		wishvel[2] = 0;
	} else {
		for (i=0 ; i<3 ; i++) {
			wishvel[i] = scale * pml.forward[i]*pm->cmd.forwardmove + scale * pml.right[i]*pm->cmd.rightmove;
		}

		wishvel[2] += scale * pm->cmd.upmove;
	}

	FUNC4 (wishvel, wishdir);
	wishspeed = FUNC5(wishdir);

	FUNC0 (wishdir, wishspeed, pm_flyaccelerate);

	FUNC3( qfalse );
}