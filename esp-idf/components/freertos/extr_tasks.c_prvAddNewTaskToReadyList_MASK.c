#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UBaseType_t ;
typedef  int /*<<< orphan*/  TaskFunction_t ;
struct TYPE_7__ {scalar_t__ uxPriority; scalar_t__ uxTCBNumber; } ;
typedef  TYPE_1__ TCB_t ;
typedef  int BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ pdFALSE ; 
 int portNUM_PROCESSORS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__** pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int tskNO_AFFINITY ; 
 scalar_t__ uxCurrentNumberOfTasks ; 
 scalar_t__ uxTaskNumber ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 scalar_t__ xSchedulerRunning ; 
 int /*<<< orphan*/  xTaskQueueMutex ; 

__attribute__((used)) static void FUNC12( TCB_t *pxNewTCB, TaskFunction_t pxTaskCode, BaseType_t xCoreID )
{
	TCB_t *curTCB, *tcb0, *tcb1;

	/* Assure that xCoreID is valid or we'll have an out-of-bounds on pxCurrentTCB
	   You will assert here if e.g. you only have one CPU enabled in menuconfig and
	   are trying to start a task on core 1. */
	FUNC0( xCoreID == tskNO_AFFINITY || xCoreID < portNUM_PROCESSORS);

    /* Ensure interrupts don't access the task lists while the lists are being
	updated. */
	FUNC5(&xTaskQueueMutex);
	{
		uxCurrentNumberOfTasks++;

		// Determine which core this task starts on
		if ( xCoreID == tskNO_AFFINITY )
		{
			if ( portNUM_PROCESSORS == 1 )
			{
				xCoreID = 0;
			}
			else
			{
				// if the task has no affinity, put it on either core if nothing is currently scheduled there. Failing that,
				// put it on the core where it will preempt the lowest priority running task. If neither of these are true,
				// queue it on the currently running core.
				tcb0 = pxCurrentTCB[0];
				tcb1 = pxCurrentTCB[1];
				if ( tcb0 == NULL )
				{
					xCoreID = 0;
				}
				else if ( tcb1 == NULL )
				{
					xCoreID = 1;
				}
				else if ( tcb0->uxPriority < pxNewTCB->uxPriority && tcb0->uxPriority < tcb1->uxPriority )
				{
					xCoreID = 0;
				}
				else if ( tcb1->uxPriority < pxNewTCB->uxPriority )
				{
					xCoreID = 1;
				}
				else
				{
					xCoreID = FUNC11(); // Both CPU have higher priority tasks running on them, so this won't run yet
				}
			}
		}

        // If nothing is running on this core, put the new task there now
		if( pxCurrentTCB[ xCoreID ] == NULL )
		{
			/* There are no other tasks, or all the other tasks are in
			the suspended state - make this the current task. */
			pxCurrentTCB[ xCoreID ] = pxNewTCB;

			if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
			{
#if portFIRST_TASK_HOOK
				if ( xPortGetCoreID() == 0 ) {
					vPortFirstTaskHook(pxTaskCode);
				}
#endif /* configFIRST_TASK_HOOK */
				/* This is the first task to be created so do the preliminary
				initialisation required.  We will not recover if this call
				fails, but we will report the failure. */
				FUNC4();
			}
			else
			{
				FUNC1();
			}
		}
		else
		{
			/* If the scheduler is not already running, make this task the
			current task if it is the highest priority task to be created
			so far. */
			if( xSchedulerRunning == pdFALSE )
			{
				/* Scheduler isn't running yet. We need to determine on which CPU to run this task.
				   Schedule now if either nothing is scheduled yet or we can replace a task of lower prio. */
				if ( pxCurrentTCB[xCoreID] == NULL || pxCurrentTCB[xCoreID]->uxPriority <= pxNewTCB->uxPriority )
				{
					pxCurrentTCB[xCoreID] = pxNewTCB;
				}
			}
			else
			{
				FUNC1();
			}
		}

		uxTaskNumber++;

		#if ( configUSE_TRACE_FACILITY == 1 )
		{
			/* Add a counter into the TCB for tracing only. */
			pxNewTCB->uxTCBNumber = uxTaskNumber;
		}
		#endif /* configUSE_TRACE_FACILITY */
		FUNC9( pxNewTCB );

		FUNC3( pxNewTCB );

		FUNC2( pxNewTCB );
	}

	FUNC6(&xTaskQueueMutex);

	if( xSchedulerRunning != pdFALSE )
	{
		FUNC5(&xTaskQueueMutex);

		curTCB = pxCurrentTCB[ xCoreID ];
		/* Scheduler is running. If the created task is of a higher priority than an executing task
		   then it should run now.
		*/
		if( curTCB == NULL || curTCB->uxPriority < pxNewTCB->uxPriority )
		{
			if( xCoreID == FUNC11() )
			{
				FUNC7();
			}
			else {
				FUNC8(xCoreID, pxNewTCB->uxPriority);
			}
		}
		else
		{
			FUNC1();
		}
		FUNC6(&xTaskQueueMutex);
	}
	else
	{
		FUNC1();
	}
}