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
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {int hasReturning; int targetPoolSize; int raiseInterrupts; int connectionSetChanged; int waitFlagsChanged; char** columnArray; void* remoteTaskList; void* localTaskList; int /*<<< orphan*/ * attributeInputMetadata; scalar_t__ rowsProcessed; void* unfinishedTaskCount; void* totalTaskCount; void* sessionList; void* workerList; int /*<<< orphan*/ * tupleStore; TYPE_1__* tupleDescriptor; int /*<<< orphan*/  paramListInfo; int /*<<< orphan*/ * executionStats; int /*<<< orphan*/ * tasksToExecute; int /*<<< orphan*/  modLevel; } ;
struct TYPE_6__ {int natts; } ;
typedef  int /*<<< orphan*/  RowModifyLevel ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DistributedExecutionStats ;
typedef  TYPE_2__ DistributedExecution ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,void**,void**) ; 
 void* NIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static DistributedExecution *
FUNC6(RowModifyLevel modLevel, List *taskList, bool hasReturning,
						   ParamListInfo paramListInfo, TupleDesc tupleDescriptor,
						   Tuplestorestate *tupleStore, int targetPoolSize)
{
	DistributedExecution *execution =
		(DistributedExecution *) FUNC5(sizeof(DistributedExecution));

	execution->modLevel = modLevel;
	execution->tasksToExecute = taskList;
	execution->hasReturning = hasReturning;

	execution->localTaskList = NIL;
	execution->remoteTaskList = NIL;

	execution->executionStats =
		(DistributedExecutionStats *) FUNC5(sizeof(DistributedExecutionStats));
	execution->paramListInfo = paramListInfo;
	execution->tupleDescriptor = tupleDescriptor;
	execution->tupleStore = tupleStore;

	execution->workerList = NIL;
	execution->sessionList = NIL;
	execution->targetPoolSize = targetPoolSize;

	execution->totalTaskCount = FUNC4(taskList);
	execution->unfinishedTaskCount = FUNC4(taskList);
	execution->rowsProcessed = 0;

	execution->raiseInterrupts = true;

	execution->connectionSetChanged = false;
	execution->waitFlagsChanged = false;

	/* allocate execution specific data once, on the ExecutorState memory context */
	if (tupleDescriptor != NULL)
	{
		execution->attributeInputMetadata = FUNC3(tupleDescriptor);
		execution->columnArray =
			(char **) FUNC5(tupleDescriptor->natts * sizeof(char *));
	}
	else
	{
		execution->attributeInputMetadata = NULL;
		execution->columnArray = NULL;
	}

	if (FUNC1(taskList))
	{
		bool readOnlyPlan = !FUNC2(modLevel, taskList);

		FUNC0(readOnlyPlan, taskList, &execution->localTaskList,
								   &execution->remoteTaskList);
	}

	return execution;
}