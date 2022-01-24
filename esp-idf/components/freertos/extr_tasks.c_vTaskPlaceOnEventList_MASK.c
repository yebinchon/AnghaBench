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
typedef  scalar_t__ UBaseType_t ;
typedef  scalar_t__ TickType_t ;
struct TYPE_3__ {int /*<<< orphan*/  xGenericListItem; int /*<<< orphan*/  uxPriority; int /*<<< orphan*/  xEventListItem; } ;
typedef  int /*<<< orphan*/  List_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ const portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,...) ; 
 TYPE_1__** pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uxTopReadyPriority ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC10 () ; 
 int /*<<< orphan*/  xSuspendedTaskList ; 
 int /*<<< orphan*/  xTaskQueueMutex ; 
 scalar_t__ const xTickCount ; 

void FUNC11( List_t * const pxEventList, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

	FUNC0( pxEventList );

	FUNC4(&xTaskQueueMutex);

	/* Place the event list item of the TCB in the appropriate event list.
	This is placed in the list in priority order so the highest priority task
	is the first to be woken by the event.  The queue that contains the event
	list is locked, preventing simultaneous access from interrupts. */
	FUNC8( pxEventList, &( pxCurrentTCB[ FUNC10() ]->xEventListItem ) );

	/* The task must be removed from from the ready list before it is added to
	the blocked list as the same list item is used for both lists.  Exclusive
	access to the ready lists guaranteed because the scheduler is locked. */
	if( FUNC7( &( pxCurrentTCB[ FUNC10() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
	{
		/* The current task must be in a ready list, so there is no need to
		check, and the port reset macro can be called directly. */
		FUNC2( pxCurrentTCB[ FUNC10() ]->uxPriority, uxTopReadyPriority );
	}
	else
	{
		FUNC1();
	}

	#if ( INCLUDE_vTaskSuspend == 1 )
	{
		if( xTicksToWait == portMAX_DELAY )
		{
			/* Add the task to the suspended task list instead of a delayed task
			list to ensure the task is not woken by a timing event.  It will
			block indefinitely. */
            traceMOVED_TASK_TO_SUSPENDED_LIST(pxCurrentTCB[ xPortGetCoreID() ]);
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) );
		}
		else
		{
			/* Calculate the time at which the task should be woken if the event
			does not occur.  This may overflow but this doesn't matter, the
			scheduler will handle it. */
			xTimeToWake = xTickCount + xTicksToWait;
			prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
		}
	}
	#else /* INCLUDE_vTaskSuspend */
	{
			/* Calculate the time at which the task should be woken if the event does
			not occur.  This may overflow but this doesn't matter, the scheduler
			will handle it. */
			xTimeToWake = xTickCount + xTicksToWait;
			FUNC3( xTimeToWake );
	}
	#endif /* INCLUDE_vTaskSuspend */

	FUNC5(&xTaskQueueMutex);

}