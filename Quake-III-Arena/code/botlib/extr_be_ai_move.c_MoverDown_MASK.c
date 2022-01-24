#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_4__ {int facenum; scalar_t__* start; } ;
typedef  TYPE_1__ aas_reachability_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_2__ botimport ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(aas_reachability_t *reach)
{
	int modelnum;
	vec3_t mins, maxs, origin;
	vec3_t angles = {0, 0, 0};

	modelnum = reach->facenum & 0x0000FFFF;
	//get some bsp model info
	FUNC0(modelnum, angles, mins, maxs, origin);
	//
	if (!FUNC1(modelnum, origin))
	{
		botimport.Print(PRT_MESSAGE, "no entity with model %d\n", modelnum);
		return qfalse;
	} //end if
	//if the top of the plat is below the reachability start point
	if (origin[2] + maxs[2] < reach->start[2]) return qtrue;
	return qfalse;
}