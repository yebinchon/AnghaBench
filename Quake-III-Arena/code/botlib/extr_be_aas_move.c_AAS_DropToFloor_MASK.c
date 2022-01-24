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
typedef  int* vec3_t ;
struct TYPE_3__ {int* endpos; scalar_t__ startsolid; } ;
typedef  TYPE_1__ bsp_trace_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(vec3_t origin, vec3_t mins, vec3_t maxs)
{
	vec3_t end;
	bsp_trace_t trace;

	FUNC1(origin, end);
	end[2] -= 100;
	trace = FUNC0(origin, mins, maxs, end, 0, CONTENTS_SOLID);
	if (trace.startsolid) return qfalse;
	FUNC1(trace.endpos, origin);
	return qtrue;
}