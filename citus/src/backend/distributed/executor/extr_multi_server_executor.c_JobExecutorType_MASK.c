#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  consttype; int /*<<< orphan*/  constvalue; int /*<<< orphan*/  constisnull; } ;
struct TYPE_6__ {int routerExecutable; scalar_t__ modLevel; int /*<<< orphan*/ * insertSelectSubquery; TYPE_1__* workerJob; } ;
struct TYPE_5__ {int /*<<< orphan*/ * taskList; int /*<<< orphan*/ * dependedJobList; TYPE_3__* partitionKeyValue; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ MultiExecutorType ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ Job ;
typedef  TYPE_2__ DistributedPlan ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ Const ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  DEBUG2 ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EnableRepartitionJoins ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MULTI_EXECUTOR_ADAPTIVE ; 
 scalar_t__ MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT ; 
 scalar_t__ MULTI_EXECUTOR_TASK_TRACKER ; 
 double MaxTrackedTasksPerNode ; 
 scalar_t__ ROW_MODIFY_READONLY ; 
 scalar_t__ TaskExecutorType ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

MultiExecutorType
FUNC10(DistributedPlan *distributedPlan)
{
	Job *job = distributedPlan->workerJob;
	MultiExecutorType executorType = TaskExecutorType;
	bool routerExecutablePlan = distributedPlan->routerExecutable;

	/* debug distribution column value */
	if (routerExecutablePlan)
	{
		if (FUNC4(DEBUG2))
		{
			Const *partitionValueConst = job->partitionKeyValue;

			if (partitionValueConst != NULL && !partitionValueConst->constisnull)
			{
				Datum partitionColumnValue = partitionValueConst->constvalue;
				Oid partitionColumnType = partitionValueConst->consttype;
				char *partitionColumnString = FUNC3(partitionColumnValue,
															partitionColumnType);

				FUNC5(DEBUG2, (FUNC8("Plan is router executable"),
								 FUNC6("distribution column value: %s",
										   FUNC1(partitionColumnString))));
			}
			else
			{
				FUNC5(DEBUG2, (FUNC8("Plan is router executable")));
			}
		}

		return MULTI_EXECUTOR_ADAPTIVE;
	}

	if (distributedPlan->insertSelectSubquery != NULL)
	{
		/*
		 * Even if adaptiveExecutorEnabled, we go through
		 * MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT because
		 * the executor already knows how to handle adaptive
		 * executor when necessary.
		 */
		return MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT;
	}

	FUNC2(distributedPlan->modLevel == ROW_MODIFY_READONLY);

	if (executorType == MULTI_EXECUTOR_ADAPTIVE)
	{
		/* if we have repartition jobs with adaptive executor and repartition
		 * joins are not enabled, error out. Otherwise, switch to task-tracker
		 */
		int dependedJobCount = FUNC9(job->dependedJobList);
		if (dependedJobCount > 0)
		{
			if (!EnableRepartitionJoins)
			{
				FUNC5(ERROR, (FUNC8(
									"the query contains a join that requires repartitioning"),
								FUNC7("Set citus.enable_repartition_joins to on "
										"to enable repartitioning")));
			}

			FUNC5(DEBUG1, (FUNC8(
								 "cannot use adaptive executor with repartition jobs"),
							 FUNC7("Since you enabled citus.enable_repartition_joins "
									 "Citus chose to use task-tracker.")));
			return MULTI_EXECUTOR_TASK_TRACKER;
		}
	}
	else
	{
		List *workerNodeList = FUNC0();
		int workerNodeCount = FUNC9(workerNodeList);
		int taskCount = FUNC9(job->taskList);
		double tasksPerNode = taskCount / ((double) workerNodeCount);

		/* if we have more tasks per node than what can be tracked, warn the user */
		if (tasksPerNode >= MaxTrackedTasksPerNode)
		{
			FUNC5(WARNING, (FUNC8("this query assigns more tasks per node than the "
									 "configured max_tracked_tasks_per_node limit")));
		}
	}

	return executorType;
}