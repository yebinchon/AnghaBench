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
struct ir_t {int ax; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 double WIIMOTE_FOV_COEFFICIENT ; 
 int /*<<< orphan*/  FUNC1 (float) ; 

float FUNC2(struct ir_t* ir) {
	float x;

	x = ir->ax - 512;
	x *= WIIMOTE_FOV_COEFFICIENT / 512.0;

	return FUNC0( FUNC1(x) );
}