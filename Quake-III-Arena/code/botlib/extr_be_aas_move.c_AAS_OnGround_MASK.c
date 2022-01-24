#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_6__ {double fraction; int* endpos; int /*<<< orphan*/  planenum; scalar_t__ startsolid; } ;
typedef  TYPE_1__ aas_trace_t ;
struct TYPE_7__ {int /*<<< orphan*/  normal; } ;
typedef  TYPE_2__ aas_plane_t ;
struct TYPE_8__ {scalar_t__ phys_maxsteepness; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int*,int*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 TYPE_3__ aassettings ; 
 int qfalse ; 
 int qtrue ; 

int FUNC4(vec3_t origin, int presencetype, int passent)
{
	aas_trace_t trace;
	vec3_t end, up = {0, 0, 1};
	aas_plane_t *plane;

	FUNC3(origin, end);
	end[2] -= 10;

	trace = FUNC1(origin, end, presencetype, passent);

	//if in solid
	if (trace.startsolid) return qfalse;
	//if nothing hit at all
	if (trace.fraction >= 1.0) return qfalse;
	//if too far from the hit plane
	if (origin[2] - trace.endpos[2] > 10) return qfalse;
	//check if the plane isn't too steep
	plane = FUNC0(trace.planenum);
	if (FUNC2(plane->normal, up) < aassettings.phys_maxsteepness) return qfalse;
	//the bot is on the ground
	return qtrue;
}