#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int member_0; int member_1; int member_2; } ;
typedef  TYPE_1__ vec3_t ;
struct TYPE_8__ {TYPE_1__ origin; int /*<<< orphan*/  areanum; int /*<<< orphan*/  name; struct TYPE_8__* next; } ;
typedef  TYPE_2__ maplocation_t ;
struct TYPE_9__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; scalar_t__ entitynum; int /*<<< orphan*/  origin; int /*<<< orphan*/  areanum; } ;
typedef  TYPE_3__ bot_goal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int /*<<< orphan*/ ) ; 
 TYPE_2__* maplocations ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(char *name, bot_goal_t *goal)
{
	maplocation_t *ml;
	vec3_t mins = {-8, -8, -8}, maxs = {8, 8, 8};

	for (ml = maplocations; ml; ml = ml->next)
	{
		if (!FUNC0(ml->name, name))
		{
			goal->areanum = ml->areanum;
			FUNC1(ml->origin, goal->origin);
			goal->entitynum = 0;
			FUNC1(mins, goal->mins);
			FUNC1(maxs, goal->maxs);
			return qtrue;
		} //end if
	} //end for
	return qfalse;
}