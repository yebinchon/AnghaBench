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
struct TYPE_3__ {int routerExecutable; int hasReturning; int /*<<< orphan*/ * masterQuery; int /*<<< orphan*/ * workerJob; int /*<<< orphan*/ * planningError; int /*<<< orphan*/  modLevel; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;
typedef  int /*<<< orphan*/  Job ;
typedef  TYPE_1__ DistributedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(DistributedPlan *distributedPlan, Query *originalQuery,
						   Query *query,
						   PlannerRestrictionContext *plannerRestrictionContext)
{
	Job *job = NULL;

	distributedPlan->modLevel = FUNC1(query);

	/* we cannot have multi shard update/delete query via this code path */
	job = FUNC0(originalQuery, plannerRestrictionContext,
					&distributedPlan->planningError);

	if (distributedPlan->planningError != NULL)
	{
		/* query cannot be handled by this planner */
		return;
	}

	FUNC2(DEBUG2, (FUNC3("Creating router plan")));

	distributedPlan->workerJob = job;
	distributedPlan->masterQuery = NULL;
	distributedPlan->routerExecutable = true;
	distributedPlan->hasReturning = false;
}