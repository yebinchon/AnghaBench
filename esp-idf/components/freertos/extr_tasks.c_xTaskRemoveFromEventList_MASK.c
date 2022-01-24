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
typedef  size_t UBaseType_t ;
struct TYPE_6__ {scalar_t__ uxPriority; } ;
struct TYPE_5__ {size_t xCoreID; scalar_t__ uxPriority; int /*<<< orphan*/  xEventListItem; int /*<<< orphan*/  xGenericListItem; } ;
typedef  TYPE_1__ TCB_t ;
typedef  int /*<<< orphan*/  List_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const* const) ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 size_t portNUM_PROCESSORS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__** pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t,scalar_t__) ; 
 scalar_t__ FUNC8 (size_t) ; 
 size_t tskNO_AFFINITY ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t* uxSchedulerSuspended ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xPendingReadyList ; 
 size_t FUNC11 () ; 
 int /*<<< orphan*/  xTaskQueueMutex ; 
 scalar_t__* xYieldPending ; 

BaseType_t FUNC12( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;
BaseType_t xTaskCanBeReady;
UBaseType_t i, uxTargetCPU;

	/* THIS FUNCTION MUST BE CALLED FROM A CRITICAL SECTION.  It can also be
	called from a critical section within an ISR. */
	FUNC5(&xTaskQueueMutex);
	/* The event list is sorted in priority order, so the first in the list can
	be removed as it is known to be the highest priority.  Remove the TCB from
	the delayed list, and add it to the ready list.

	If an event is for a queue that is locked then this function will never
	get called - the lock count on the queue will get modified instead.  This
	means exclusive access to the event list is guaranteed here.

	This function assumes that a check has already been made to ensure that
	pxEventList is not empty. */
	if ( ( FUNC2( pxEventList ) ) == pdFALSE ) {
		pxUnblockedTCB = ( TCB_t * ) FUNC1( pxEventList );
		FUNC0( pxUnblockedTCB );
		( void ) FUNC9( &( pxUnblockedTCB->xEventListItem ) );
	} else {
		FUNC6(&xTaskQueueMutex);
		return pdFALSE;
	}

	/* Determine if the task can possibly be run on either CPU now, either because the scheduler
	   the task is pinned to is running or because a scheduler is running on any CPU. */
	xTaskCanBeReady = pdFALSE;
	if ( pxUnblockedTCB->xCoreID == tskNO_AFFINITY ) {
		uxTargetCPU = FUNC11();
		for (i = 0; i < portNUM_PROCESSORS; i++) {
			if ( uxSchedulerSuspended[ i ] == ( UBaseType_t ) pdFALSE ) {
				xTaskCanBeReady = pdTRUE;
				break;
			}
		}
	} else {
		uxTargetCPU = pxUnblockedTCB->xCoreID;
		xTaskCanBeReady = uxSchedulerSuspended[ uxTargetCPU ] == ( UBaseType_t ) pdFALSE;

	}

	if( xTaskCanBeReady )
	{
		( void ) FUNC9( &( pxUnblockedTCB->xGenericListItem ) );
		FUNC3( pxUnblockedTCB );
	}
	else
	{
		/* The delayed and ready lists cannot be accessed, so hold this task
		pending until the scheduler is resumed on this CPU. */
		FUNC10( &( xPendingReadyList[ uxTargetCPU ] ), &( pxUnblockedTCB->xEventListItem ) );
	}

	if ( FUNC8(pxUnblockedTCB->xCoreID) && pxUnblockedTCB->uxPriority >= pxCurrentTCB[ FUNC11() ]->uxPriority )
	{
		/* Return true if the task removed from the event list has a higher
		priority than the calling task.  This allows the calling task to know if
		it should force a context switch now. */
		xReturn = pdTRUE;

		/* Mark that a yield is pending in case the user is not using the
		"xHigherPriorityTaskWoken" parameter to an ISR safe FreeRTOS function. */
		xYieldPending[ FUNC11() ] = pdTRUE;
	}
	else if ( pxUnblockedTCB->xCoreID != FUNC11() )
	{
		FUNC7( pxUnblockedTCB->xCoreID, pxUnblockedTCB->uxPriority );
		xReturn = pdFALSE;
	}
	else
	{
		xReturn = pdFALSE;
	}

	#if( configUSE_TICKLESS_IDLE == 1 )
	{
		/* If a task is blocked on a kernel object then xNextTaskUnblockTime
		might be set to the blocked task's time out time.  If the task is
		unblocked for a reason other than a timeout xNextTaskUnblockTime is
		normally left unchanged, because it is automatically get reset to a new
		value when the tick count equals xNextTaskUnblockTime.  However if
		tickless idling is used it might be more important to enter sleep mode
		at the earliest possible time - so reset xNextTaskUnblockTime here to
		ensure it is updated at the earliest possible time. */
		prvResetNextTaskUnblockTime();
	}
	#endif
	FUNC6(&xTaskQueueMutex);

	return xReturn;
}