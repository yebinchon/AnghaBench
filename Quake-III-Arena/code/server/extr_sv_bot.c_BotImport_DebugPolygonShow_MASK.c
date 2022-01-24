#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_3__ {int color; int numPoints; int /*<<< orphan*/  points; int /*<<< orphan*/  inuse; } ;
typedef  TYPE_1__ bot_debugpoly_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* debugpolygons ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC1(int id, int color, int numPoints, vec3_t *points) {
	bot_debugpoly_t *poly;

	if (!debugpolygons) return;
	poly = &debugpolygons[id];
	poly->inuse = qtrue;
	poly->color = color;
	poly->numPoints = numPoints;
	FUNC0(poly->points, points, numPoints * sizeof(vec3_t));
}