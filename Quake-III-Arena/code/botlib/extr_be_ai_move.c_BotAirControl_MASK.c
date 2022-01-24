#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_2__ {double value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC1 (double*,double*) ; 
 float FUNC2 (double*) ; 
 int /*<<< orphan*/  FUNC3 (double*,double,double*) ; 
 int /*<<< orphan*/  FUNC4 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (double*,double*,double*) ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_1__* sv_gravity ; 

int FUNC6(vec3_t origin, vec3_t velocity, vec3_t goal, vec3_t dir, float *speed)
{
	vec3_t org, vel;
	float dist;
	int i;

	FUNC1(origin, org);
	FUNC3(velocity, 0.1, vel);
	for (i = 0; i < 50; i++)
	{
		vel[2] -= sv_gravity->value * 0.01;
		//if going down and next position would be below the goal
		if (vel[2] < 0 && org[2] + vel[2] < goal[2])
		{
			FUNC3(vel, (goal[2] - org[2]) / vel[2], vel);
			FUNC0(org, vel, org);
			FUNC5(goal, org, dir);
			dist = FUNC2(dir);
			if (dist > 32) dist = 32;
			*speed = 400 - (400 - 13 * dist);
			return qtrue;
		} //end if
		else
		{
			FUNC0(org, vel, org);
		} //end else
	} //end for
	FUNC4(dir, 0, 0, 0);
	*speed = 400;
	return qfalse;
}