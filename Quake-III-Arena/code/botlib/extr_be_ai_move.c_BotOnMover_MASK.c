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
typedef  scalar_t__* vec3_t ;
struct TYPE_6__ {scalar_t__ ent; int /*<<< orphan*/  allsolid; int /*<<< orphan*/  startsolid; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_7__ {int facenum; } ;
typedef  TYPE_2__ aas_reachability_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 TYPE_1__ FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int,int) ; 
 int CONTENTS_PLAYERCLIP ; 
 int CONTENTS_SOLID ; 
 scalar_t__ ENTITYNUM_NONE ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 
 TYPE_3__ botimport ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(vec3_t origin, int entnum, aas_reachability_t *reach)
{
	int i, modelnum;
	vec3_t mins, maxs, modelorigin, org, end;
	vec3_t angles = {0, 0, 0};
	vec3_t boxmins = {-16, -16, -8}, boxmaxs = {16, 16, 8};
	bsp_trace_t trace;

	modelnum = reach->facenum & 0x0000FFFF;
	//get some bsp model info
	FUNC0(modelnum, angles, mins, maxs, NULL);
	//
	if (!FUNC2(modelnum, modelorigin))
	{
		botimport.Print(PRT_MESSAGE, "no entity with model %d\n", modelnum);
		return qfalse;
	} //end if
	//
	for (i = 0; i < 2; i++)
	{
		if (origin[i] > modelorigin[i] + maxs[i] + 16) return qfalse;
		if (origin[i] < modelorigin[i] + mins[i] - 16) return qfalse;
	} //end for
	//
	FUNC4(origin, org);
	org[2] += 24;
	FUNC4(origin, end);
	end[2] -= 48;
	//
	trace = FUNC3(org, boxmins, boxmaxs, end, entnum, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
	if (!trace.startsolid && !trace.allsolid)
	{
		//NOTE: the reachability face number is the model number of the elevator
		if (trace.ent != ENTITYNUM_NONE && FUNC1(trace.ent) == modelnum)
		{
			return qtrue;
		} //end if
	} //end if
	return qfalse;
}