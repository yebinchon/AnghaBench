#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ir_t {scalar_t__ ax; scalar_t__ ay; scalar_t__ sx; scalar_t__ sy; } ;
typedef  scalar_t__ f32 ;

/* Variables and functions */
 scalar_t__ SMOOTH_IR_DEADZONE ; 
 scalar_t__ SMOOTH_IR_RADIUS ; 
 scalar_t__ SMOOTH_IR_SPEED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void FUNC5(struct ir_t *ir) {
	f32 dx, dy, d, theta;

	FUNC0("Smooth: OK (%.02f, %.02f) LAST (%.02f, %.02f) ", ir->ax, ir->ay, ir->sx, ir->sy);
	dx = ir->ax - ir->sx;
	dy = ir->ay - ir->sy;
	d = FUNC4(dx*dx + dy*dy);
	if (d > SMOOTH_IR_DEADZONE) {
		if (d < SMOOTH_IR_RADIUS) {
			FUNC0("INSIDE\n");
			ir->sx += dx * SMOOTH_IR_SPEED;
			ir->sy += dy * SMOOTH_IR_SPEED;
		} else {
			FUNC0("OUTSIDE\n");
			theta = FUNC1(dy, dx);
			ir->sx = ir->ax - FUNC2(theta) * SMOOTH_IR_RADIUS;
			ir->sy = ir->ay - FUNC3(theta) * SMOOTH_IR_RADIUS;
		}
	} else {
		FUNC0("DEADZONE\n");
	}
}