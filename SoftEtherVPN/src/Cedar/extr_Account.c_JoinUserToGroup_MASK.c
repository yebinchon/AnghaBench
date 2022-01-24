#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ USERGROUP ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * GroupName; TYPE_1__* Group; } ;
typedef  TYPE_2__ USER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(USER *u, USERGROUP *g)
{
	// Validate arguments
	if (u == NULL)
	{
		return;
	}

	if (g != NULL)
	{
		// Join
		FUNC3(u->lock);
		{
			FUNC3(g->lock);
			{
				if (u->Group != NULL)
				{
					// Remove the user from current group first
					// 
					FUNC4(u->Group);
					u->Group = NULL;
					FUNC2(u->GroupName);
					u->GroupName = NULL;
				}
				// Join the user to the group
				u->GroupName = FUNC1(g->Name);
				u->Group = g;
				FUNC0(g->ref);
			}
			FUNC5(g->lock);
		}
		FUNC5(u->lock);
	}
	else
	{
		// Withdrawal
		FUNC3(u->lock);
		{
			if (u->Group != NULL)
			{
				// Remove the user from current group
				FUNC4(u->Group);
				u->Group = NULL;
				FUNC2(u->GroupName);
				u->GroupName = NULL;
			}
		}
		FUNC5(u->lock);
	}
}