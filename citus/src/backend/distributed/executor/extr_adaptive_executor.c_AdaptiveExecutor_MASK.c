#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_25__ {int /*<<< orphan*/  tuplestorestate; int /*<<< orphan*/  finishedRemoteScan; TYPE_3__* distributedPlan; } ;
struct TYPE_24__ {scalar_t__ rowsProcessed; int /*<<< orphan*/  localTaskList; int /*<<< orphan*/  tasksToExecute; } ;
struct TYPE_23__ {scalar_t__ modLevel; scalar_t__ targetRelationId; scalar_t__ hasReturning; TYPE_1__* workerJob; } ;
struct TYPE_22__ {scalar_t__ es_processed; int /*<<< orphan*/  es_param_list_info; } ;
struct TYPE_21__ {int /*<<< orphan*/ * taskList; } ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ Job ;
typedef  TYPE_2__ EState ;
typedef  TYPE_3__ DistributedPlan ;
typedef  TYPE_4__ DistributedExecution ;
typedef  TYPE_5__ CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int MaxAdaptiveExecutorPoolSize ; 
 scalar_t__ MultiShardConnectionType ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ ROW_MODIFY_READONLY ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ SEQUENTIAL_CONNECTION ; 
 TYPE_2__* FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ SortReturning ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

TupleTableSlot *
FUNC17(CitusScanState *scanState)
{
	TupleTableSlot *resultSlot = NULL;

	DistributedPlan *distributedPlan = scanState->distributedPlan;
	DistributedExecution *execution = NULL;
	EState *executorState = FUNC9(scanState);
	ParamListInfo paramListInfo = executorState->es_param_list_info;
	TupleDesc tupleDescriptor = FUNC10(scanState);
	bool randomAccess = true;
	bool interTransactions = false;
	int targetPoolSize = MaxAdaptiveExecutorPoolSize;


	Job *job = distributedPlan->workerJob;
	List *taskList = job->taskList;

	/* we should only call this once before the scan finished */
	FUNC1(!scanState->finishedRemoteScan);

	/*
	 * PostgreSQL takes locks on all partitions in the executor. It's not entirely
	 * clear why this is necessary (instead of locking the parent during DDL), but
	 * We do the same for consistency.
	 */
	FUNC5(distributedPlan);

	FUNC3(distributedPlan);

	if (MultiShardConnectionType == SEQUENTIAL_CONNECTION)
	{
		/* defer decision after ExecuteSubPlans() */
		targetPoolSize = 1;
	}

	scanState->tuplestorestate =
		FUNC16(randomAccess, interTransactions, work_mem);

	execution = FUNC2(distributedPlan->modLevel, taskList,
										   distributedPlan->hasReturning, paramListInfo,
										   tupleDescriptor,
										   scanState->tuplestorestate, targetPoolSize);

	/*
	 * Make sure that we acquire the appropriate locks even if the local tasks
	 * are going to be executed with local execution.
	 */
	FUNC14(execution);

	/* execute tasks local to the node (if any) */
	if (FUNC15(execution->localTaskList) > 0)
	{
		FUNC8(scanState, execution);

		/* make sure that we only execute remoteTaskList afterwards */
		FUNC0(execution);
	}

	if (FUNC12(execution->tasksToExecute))
	{
		FUNC11(execution);
	}
	else
	{
		FUNC7(execution);
	}

	if (distributedPlan->modLevel != ROW_MODIFY_READONLY)
	{
		if (FUNC15(execution->localTaskList) == 0)
		{
			FUNC1(executorState->es_processed == 0);

			executorState->es_processed = execution->rowsProcessed;
		}
		else if (distributedPlan->targetRelationId != InvalidOid &&
				 FUNC6(distributedPlan->targetRelationId) != DISTRIBUTE_BY_NONE)
		{
			/*
			 * For reference tables we already add rowsProcessed on the local execution,
			 * this is required to ensure that mixed local/remote executions reports
			 * the accurate number of rowsProcessed to the user.
			 */
			executorState->es_processed += execution->rowsProcessed;
		}
	}

	FUNC4(execution);

	if (SortReturning && distributedPlan->hasReturning)
	{
		FUNC13(scanState);
	}

	return resultSlot;
}