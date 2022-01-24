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
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_5__ {int /*<<< orphan*/ * planningError; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;
typedef  TYPE_1__ DistributedPlan ;
typedef  int /*<<< orphan*/  DeferredErrorMessage ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DistributedPlan *
FUNC4(uint64 planId, Query *originalQuery,
					   PlannerRestrictionContext *plannerRestrictionContext)
{
	DistributedPlan *distributedPlan = NULL;
	DeferredErrorMessage *deferredError = NULL;

	deferredError = FUNC2(originalQuery);
	if (deferredError != NULL)
	{
		/* raising the error as there is no possible solution for the unsupported on conflict statements */
		FUNC3(deferredError, ERROR);
	}

	distributedPlan = FUNC1(originalQuery,
														plannerRestrictionContext);

	if (distributedPlan->planningError != NULL)
	{
		FUNC3(distributedPlan->planningError, DEBUG1);

		/* if INSERT..SELECT cannot be distributed, pull to coordinator */
		distributedPlan = FUNC0(planId, originalQuery);
	}

	return distributedPlan;
}