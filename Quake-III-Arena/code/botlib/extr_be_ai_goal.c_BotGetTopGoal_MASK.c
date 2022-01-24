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
struct TYPE_3__ {size_t goalstacktop; int /*<<< orphan*/ * goalstack; } ;
typedef  TYPE_1__ bot_goalstate_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(int goalstate, bot_goal_t *goal)
{
	bot_goalstate_t *gs;

	gs = FUNC0(goalstate);
	if (!gs) return qfalse;
	if (!gs->goalstacktop) return qfalse;
	FUNC1(goal, &gs->goalstack[gs->goalstacktop], sizeof(bot_goal_t));
	return qtrue;
}