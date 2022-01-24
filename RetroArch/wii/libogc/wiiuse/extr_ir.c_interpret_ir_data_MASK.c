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
struct orient_t {int /*<<< orphan*/  yaw; } ;
struct TYPE_2__ {int /*<<< orphan*/  angle; } ;
struct ir_t {int z; int distance; scalar_t__ error_cnt; float sx; float ax; float sy; float ay; scalar_t__ glitch_cnt; int smooth_valid; float x; float y; int valid; int /*<<< orphan*/ * vres; int /*<<< orphan*/  aspect; int /*<<< orphan*/ * offset; TYPE_1__ sensorbar; int /*<<< orphan*/  angle; scalar_t__ raw_valid; } ;

/* Variables and functions */
 scalar_t__ ERROR_MAX_COUNT ; 
 float GLITCH_DIST ; 
 scalar_t__ GLITCH_MAX_COUNT ; 
 int SB_Z_COEFFICIENT ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct ir_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct ir_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct ir_t*,struct orient_t*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (float*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct ir_t* ir, struct orient_t *orient) {

	float x,y;
	float d;

	FUNC3(ir, orient);

	if(ir->raw_valid) {
		ir->angle = ir->sensorbar.angle;
		ir->z = SB_Z_COEFFICIENT / ir->distance;
		orient->yaw = FUNC2(ir);
		if(ir->error_cnt >= ERROR_MAX_COUNT) {
			ir->sx = ir->ax;
			ir->sy = ir->ay;
			ir->glitch_cnt = 0;
		} else {
			d = FUNC0(ir->ax - ir->sx) + FUNC0(ir->ay - ir->sy);
			if(d > GLITCH_DIST) {
				if(ir->glitch_cnt > GLITCH_MAX_COUNT) {
					FUNC1(ir);
					ir->glitch_cnt = 0;
				} else {
					ir->glitch_cnt++;
				}
			} else {
				ir->glitch_cnt = 0;
				FUNC1(ir);
			}
		}
		ir->smooth_valid = 1;
		ir->error_cnt = 0;
	} else {
		if(ir->error_cnt >= ERROR_MAX_COUNT) {
			ir->smooth_valid = 0;
		} else {
			ir->smooth_valid = 1;
			ir->error_cnt++;
		}
	}
	if(ir->smooth_valid) {
		x = ir->sx;
		y = ir->sy;
		if (FUNC5(&x, &y, ir->aspect, ir->offset[0], ir->offset[1])) {
			FUNC4(&x, &y, ir->aspect, ir->vres[0], ir->vres[1]);
			ir->x = x;
			ir->y = y;
			ir->valid = 1;
		} else {
			ir->valid = 0;
		}
	} else {
		ir->valid = 0;
	}
}