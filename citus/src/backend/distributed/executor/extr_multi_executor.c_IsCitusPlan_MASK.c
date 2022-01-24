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
struct TYPE_4__ {struct TYPE_4__* righttree; struct TYPE_4__* lefttree; } ;
typedef  TYPE_1__ Plan ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC1(Plan *plan)
{
	if (plan == NULL)
	{
		return false;
	}

	if (FUNC0(plan))
	{
		return true;
	}

	if (plan->lefttree != NULL && FUNC1(plan->lefttree))
	{
		return true;
	}

	if (plan->righttree != NULL && FUNC1(plan->righttree))
	{
		return true;
	}

	return false;
}