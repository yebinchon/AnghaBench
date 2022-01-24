#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_21__ {int /*<<< orphan*/  tuplestorestate; } ;
struct TYPE_20__ {int /*<<< orphan*/  es_param_list_info; } ;
struct TYPE_19__ {scalar_t__ commandType; } ;
struct TYPE_18__ {TYPE_1__* estate; } ;
struct TYPE_17__ {int /*<<< orphan*/  es_processed; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  TYPE_2__ QueryDesc ;
typedef  TYPE_3__ PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  TYPE_4__ EState ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_5__ CitusScanState ;

/* Variables and functions */
 scalar_t__ CMD_SELECT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DestTuplestore ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,long,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
 TYPE_4__* FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 

__attribute__((used)) static uint64
FUNC11(CitusScanState *scanState, PlannedStmt *taskPlan, char *queryString)
{
	EState *executorState = FUNC8(scanState);
	ParamListInfo paramListInfo = executorState->es_param_list_info;
	DestReceiver *tupleStoreDestReceiever = FUNC0(DestTuplestore);
	ScanDirection scanDirection = ForwardScanDirection;
	QueryEnvironment *queryEnv = FUNC10();
	QueryDesc *queryDesc = NULL;
	int eflags = 0;
	uint64 totalRowsProcessed = 0;

	/*
	 * Use the tupleStore provided by the scanState because it is shared accross
	 * the other task executions and the adaptive executor.
	 */
	FUNC9(tupleStoreDestReceiever,
									scanState->tuplestorestate,
									CurrentMemoryContext, false);

	/* Create a QueryDesc for the query */
	queryDesc = FUNC1(taskPlan, queryString,
								FUNC7(), InvalidSnapshot,
								tupleStoreDestReceiever, paramListInfo,
								queryEnv, 0);

	FUNC5(queryDesc, eflags);
	FUNC4(queryDesc, scanDirection, 0L, true);

	/*
	 * We'll set the executorState->es_processed later, for now only remember
	 * the count.
	 */
	if (taskPlan->commandType != CMD_SELECT)
	{
		totalRowsProcessed = queryDesc->estate->es_processed;
	}

	FUNC3(queryDesc);
	FUNC2(queryDesc);

	FUNC6(queryDesc);

	return totalRowsProcessed;
}