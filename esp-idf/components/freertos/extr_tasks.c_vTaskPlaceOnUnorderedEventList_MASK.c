#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UBaseType_t ;
typedef  scalar_t__ TickType_t ;
struct TYPE_2__ {int /*<<< orphan*/  xGenericListItem; int /*<<< orphan*/  uxPriority; int /*<<< orphan*/  xEventListItem; } ;
typedef  int /*<<< orphan*/  List_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ const portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,...) ; 
 TYPE_1__** pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ const taskEVENT_LIST_ITEM_VALUE_IN_USE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__* uxSchedulerSuspended ; 
 int /*<<< orphan*/  uxTopReadyPriority ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC9 () ; 
 int /*<<< orphan*/  xSuspendedTaskList ; 
 int /*<<< orphan*/  xTaskQueueMutex ; 
 scalar_t__ const xTickCount ; 

void FUNC10( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

	FUNC0( *pxEventList );

	FUNC5(&xTaskQueueMutex);

	/* THIS FUNCTION MUST BE CALLED WITH THE SCHEDULER SUSPENDED.  It is used by
	the event groups implementation. */
	FUNC0( uxSchedulerSuspended[ FUNC9() ] != 0 );

	/* Store the item value in the event list item.  It is safe to access the
	event list item here as interrupts won't access the event list item of a
	task that is not in the Blocked state. */
	FUNC1( &( pxCurrentTCB[ FUNC9() ]->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );

	/* Place the event list item of the TCB at the end of the appropriate event
	list.  It is safe to access the event list here because it is part of an
	event group implementation - and interrupts don't access event groups
	directly (instead they access them indirectly by pending function calls to
	the task level). */
	FUNC8( pxEventList, &( pxCurrentTCB[ FUNC9() ]->xEventListItem ) );

	/* The task must be removed from the ready list before it is added to the
	blocked list.  Exclusive access can be assured to the ready list as the
	scheduler is locked. */
	if( FUNC7( &( pxCurrentTCB[ FUNC9() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
	{
		/* The current task must be in a ready list, so there is no need to
		check, and the port reset macro can be called directly. */
		FUNC3( pxCurrentTCB[ FUNC9() ]->uxPriority, uxTopReadyPriority );
	}
	else
	{
		FUNC2();
	}

	#if ( INCLUDE_vTaskSuspend == 1 )
	{
		if( xTicksToWait == portMAX_DELAY )
		{
			/* Add the task to the suspended task list instead of a delayed task
			list to ensure it is not woken by a timing event.  It will block
			indefinitely. */
			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) );
		}
		else
		{
			/* Calculate the time at which the task should be woken if the event
			does not occur.  This may overflow but this doesn't matter, the
			kernel will manage it correctly. */
			xTimeToWake = xTickCount + xTicksToWait;
			prvAddCurrentTaskToDelayedList( xPortGetCoreID(), xTimeToWake );
		}
	}
	#else /* INCLUDE_vTaskSuspend */
	{
			/* Calculate the time at which the task should be woken if the event does
			not occur.  This may overflow but this doesn't matter, the kernel
			will manage it correctly. */
			xTimeToWake = xTickCount + xTicksToWait;
			FUNC4( xTimeToWake );
	}
	#endif /* INCLUDE_vTaskSuspend */

	FUNC6(&xTaskQueueMutex);
}