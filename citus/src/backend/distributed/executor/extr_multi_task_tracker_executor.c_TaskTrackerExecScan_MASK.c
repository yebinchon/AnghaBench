#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_11__ {int finishedRemoteScan; TYPE_2__* distributedPlan; } ;
struct TYPE_10__ {int /*<<< orphan*/  relationIdList; TYPE_1__* workerJob; } ;
struct TYPE_9__ {int /*<<< orphan*/ * jobQuery; } ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ Job ;
typedef  TYPE_2__ DistributedPlan ;
typedef  int /*<<< orphan*/  CustomScanState ;
typedef  TYPE_3__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

TupleTableSlot *
FUNC10(CustomScanState *node)
{
	CitusScanState *scanState = (CitusScanState *) node;
	TupleTableSlot *resultSlot = NULL;

	if (!scanState->finishedRemoteScan)
	{
		DistributedPlan *distributedPlan = scanState->distributedPlan;
		Job *workerJob = distributedPlan->workerJob;
		Query *jobQuery = workerJob->jobQuery;

		FUNC2();
		FUNC1();

		if (FUNC0((Node *) jobQuery))
		{
			FUNC8(ERROR, (FUNC9("Complex subqueries and CTEs are not supported when "
								   "task_executor_type is set to 'task-tracker'")));
		}

		/* we are taking locks on partitions of partitioned tables */
		FUNC4(distributedPlan->relationIdList, AccessShareLock);

		FUNC6(workerJob);
		FUNC5(workerJob);

		FUNC3(scanState, workerJob);

		scanState->finishedRemoteScan = true;
	}

	resultSlot = FUNC7(scanState);

	return resultSlot;
}