#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vec3w_t {scalar_t__ y; scalar_t__ x; scalar_t__ z; } ;
struct orient_t {float yaw; float roll; float a_roll; float pitch; float a_pitch; } ;
struct TYPE_4__ {int x; int y; scalar_t__ z; } ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; scalar_t__ z; } ;
struct accel_t {TYPE_2__ cal_g; TYPE_1__ cal_zero; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMOOTH_PITCH ; 
 int /*<<< orphan*/  SMOOTH_ROLL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct accel_t*,struct orient_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 
 scalar_t__ FUNC4 (float) ; 

void FUNC5(struct accel_t* ac, struct vec3w_t* accel, struct orient_t* orient, int smooth) {
	float xg, yg, zg;
	float x, y, z;

	/*
	 *	roll	- use atan(z / x)		[ ranges from -180 to 180 ]
	 *	pitch	- use atan(z / y)		[ ranges from -180 to 180 ]
	 *	yaw		- impossible to tell without IR
	 */

	/* yaw - set to 0, IR will take care of it if it's enabled */
	orient->yaw = 0.0f;

	/* find out how much it has to move to be 1g */
	xg = (float)ac->cal_g.x;
	yg = (float)ac->cal_g.y;
	zg = (float)ac->cal_g.z;

	/* find out how much it actually moved and normalize to +/- 1g */
	x = ((float)accel->x - (float)ac->cal_zero.x) / xg;
	y = ((float)accel->y - (float)ac->cal_zero.y) / yg;
	z = ((float)accel->z - (float)ac->cal_zero.z) / zg;

	/* make sure x,y,z are between -1 and 1 for the tan functions */
	if (x < -1.0f)			x = -1.0f;
	else if (x > 1.0f)		x = 1.0f;
	if (y < -1.0f)			y = -1.0f;
	else if (y > 1.0f)		y = 1.0f;
	if (z < -1.0f)			z = -1.0f;
	else if (z > 1.0f)		z = 1.0f;

	/* if it is over 1g then it is probably accelerating and not reliable */
	if (FUNC1(accel->x - ac->cal_zero.x) <= (ac->cal_g.x+10)) {
		/* roll */
		x = FUNC0(FUNC3(x, z));
		if(FUNC4(x)) {
			orient->roll = x;
			orient->a_roll = x;
		}
	}

	if (FUNC1(accel->y - ac->cal_zero.y) <= (ac->cal_g.y+10)) {
		/* pitch */
		y = FUNC0(FUNC3(y, z));
		if(FUNC4(y)) {
			orient->pitch = y;
			orient->a_pitch = y;
		}
	}

	/* smooth the angles if enabled */
	if (smooth) {
		FUNC2(ac, orient, SMOOTH_ROLL);
		FUNC2(ac, orient, SMOOTH_PITCH);
	}
}