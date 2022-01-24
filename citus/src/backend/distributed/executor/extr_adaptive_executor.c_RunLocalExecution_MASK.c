#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_6__ {int /*<<< orphan*/  localTaskList; } ;
struct TYPE_5__ {int /*<<< orphan*/  es_processed; } ;
typedef  TYPE_1__ EState ;
typedef  TYPE_2__ DistributedExecution ;
typedef  int /*<<< orphan*/  CitusScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LocalExecutionHappened ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(CitusScanState *scanState, DistributedExecution *execution)
{
	uint64 rowsProcessed = FUNC0(scanState, execution->localTaskList);
	EState *executorState = NULL;

	LocalExecutionHappened = true;

	/*
	 * We're deliberately not setting execution->rowsProceessed here. The main reason
	 * is that modifications to reference tables would end-up setting it both here
	 * and in AdaptiveExecutor. Instead, we set executorState here and skip updating it
	 * for reference table modifications in AdaptiveExecutor.
	 */
	executorState = FUNC1(scanState);
	executorState->es_processed = rowsProcessed;
}