#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UBaseType_t ;
struct TYPE_5__ {scalar_t__ uxPriority; } ;
struct TYPE_4__ {scalar_t__ uxPriority; int /*<<< orphan*/  xCoreID; int /*<<< orphan*/  xGenericListItem; int /*<<< orphan*/  xEventListItem; } ;
typedef  TYPE_1__ TCB_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__** pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ taskSCHEDULER_RUNNING ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ uxCurrentNumberOfTasks ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ uxPendedTicks ; 
 scalar_t__* uxSchedulerSuspended ; 
 int /*<<< orphan*/ * xPendingReadyList ; 
 size_t FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  xTaskQueueMutex ; 
 scalar_t__* xYieldPending ; 

BaseType_t FUNC13( void )
{
TCB_t *pxTCB;
BaseType_t xAlreadyYielded = pdFALSE;

	/* If scheduler state is `taskSCHEDULER_RUNNING` then this function does not match a
	previous call to vTaskSuspendAll(). */
	FUNC0( FUNC11() != taskSCHEDULER_RUNNING );
	/* It is possible that an ISR caused a task to be removed from an event
	list while the scheduler was suspended.  If this was the case then the
	removed task will have been added to the xPendingReadyList.  Once the
	scheduler has been resumed it is safe to move all the pending ready
	tasks from this list into their appropriate ready list. */

	FUNC5(&xTaskQueueMutex);
	{
		--uxSchedulerSuspended[ FUNC10() ];

		if( uxSchedulerSuspended[ FUNC10() ] == ( UBaseType_t ) pdFALSE )
		{
			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
			{
				/* Move any readied tasks from the pending list into the
				appropriate ready list. */
				while( FUNC2( &xPendingReadyList[ FUNC10() ] ) == pdFALSE )
				{
					pxTCB = ( TCB_t * ) FUNC1( ( &xPendingReadyList[ FUNC10() ] ) );
					( void ) FUNC9( &( pxTCB->xEventListItem ) );
					( void ) FUNC9( &( pxTCB->xGenericListItem ) );
					FUNC4( pxTCB );

					/* If the moved task has a priority higher than the current
					task then a yield must be performed. */
					if ( FUNC8(pxTCB->xCoreID) && pxTCB->uxPriority >= pxCurrentTCB[ FUNC10() ]->uxPriority )
					{
						/* We can schedule the awoken task on this CPU. */
						xYieldPending[FUNC10()] = pdTRUE;
					}
					else
					{
						FUNC3();
					}
				}

				/* If any ticks occurred while the scheduler was suspended then
				they should be processed now.  This ensures the tick count does
				not	slip, and that any delayed tasks are resumed at the correct
				time. */
				if( uxPendedTicks > ( UBaseType_t ) 0U )
				{
					while( uxPendedTicks > ( UBaseType_t ) 0U )
					{
						if( FUNC12() != pdFALSE )
						{
							xYieldPending[ FUNC10() ] = pdTRUE;
						}
						else
						{
							FUNC3();
						}
						--uxPendedTicks;
					}
				}
				else
				{
					FUNC3();
				}

				if( xYieldPending[ FUNC10() ] == pdTRUE )
				{
					#if( configUSE_PREEMPTION != 0 )
					{
						xAlreadyYielded = pdTRUE;
					}
					#endif
					FUNC7();
				}
				else
				{
					FUNC3();
				}
			}
		}
		else
		{
			FUNC3();
		}
	}
	FUNC6(&xTaskQueueMutex);

	return xAlreadyYielded;
}