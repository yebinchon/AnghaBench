#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; struct TYPE_4__* Policy; struct TYPE_4__* Note; struct TYPE_4__* RealName; struct TYPE_4__* Name; } ;
typedef  TYPE_1__ USERGROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(USERGROUP *g)
{
	// Validate arguments
	if (g == NULL)
	{
		return;
	}

	FUNC1(g->Name);
	FUNC1(g->RealName);
	FUNC1(g->Note);

	if (g->Policy)
	{
		// Free policy data
		FUNC1(g->Policy);
	}


	FUNC2(g->Traffic);

	FUNC0(g->lock);
	FUNC1(g);
}