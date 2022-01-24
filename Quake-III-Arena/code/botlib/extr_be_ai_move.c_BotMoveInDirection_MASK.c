#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_5__ {int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_movestate_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,float,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,float,int) ; 
 int qfalse ; 

int FUNC4(int movestate, vec3_t dir, float speed, int type)
{
	bot_movestate_t *ms;

	ms = FUNC1(movestate);
	if (!ms) return qfalse;
	//if swimming
	if (FUNC0(ms->origin))
	{
		return FUNC2(ms, dir, speed, type);
	} //end if
	else
	{
		return FUNC3(ms, dir, speed, type);
	} //end else
}