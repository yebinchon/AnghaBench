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
typedef  scalar_t__* vec3_t ;
struct TYPE_3__ {scalar_t__* mins; scalar_t__* maxs; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_goal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  PRESENCE_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC3(vec3_t origin, bot_goal_t *goal)
{
	int i;
	vec3_t boxmins, boxmaxs;
	vec3_t absmins, absmaxs;
	vec3_t safety_maxs = {0, 0, 0}; //{4, 4, 10};
	vec3_t safety_mins = {0, 0, 0}; //{-4, -4, 0};

	FUNC0(PRESENCE_NORMAL, boxmins, boxmaxs);
	FUNC2(goal->mins, boxmaxs, absmins);
	FUNC2(goal->maxs, boxmins, absmaxs);
	FUNC1(absmins, goal->origin, absmins);
	FUNC1(absmaxs, goal->origin, absmaxs);
	//make the box a little smaller for safety
	FUNC2(absmaxs, safety_maxs, absmaxs);
	FUNC2(absmins, safety_mins, absmins);

	for (i = 0; i < 3; i++)
	{
		if (origin[i] < absmins[i] || origin[i] > absmaxs[i]) return qfalse;
	} //end for
	return qtrue;
}