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
struct TYPE_5__ {int goalstacktop; TYPE_1__* goalstack; } ;
typedef  TYPE_2__ bot_goalstate_t ;
struct TYPE_4__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

void FUNC3(int goalstate)
{
	int i;
	bot_goalstate_t *gs;
	char name[32];

	gs = FUNC1(goalstate);
	if (!gs) return;
	for (i = 1; i <= gs->goalstacktop; i++)
	{
		FUNC0(gs->goalstack[i].number, name, 32);
		FUNC2("%d: %s", i, name);
	} //end for
}