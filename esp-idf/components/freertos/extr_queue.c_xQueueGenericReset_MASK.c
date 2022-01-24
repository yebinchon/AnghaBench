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
typedef  int UBaseType_t ;
struct TYPE_4__ {scalar_t__ pcReadFrom; } ;
struct TYPE_5__ {int uxLength; int uxItemSize; int uxMessagesWaiting; int /*<<< orphan*/  mux; int /*<<< orphan*/  xTasksWaitingToReceive; int /*<<< orphan*/  xTasksWaitingToSend; scalar_t__ pcHead; TYPE_1__ u; scalar_t__ pcWriteTo; scalar_t__ pcTail; } ;
typedef  TYPE_2__ Queue_t ;
typedef  scalar_t__ QueueHandle_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdPASS ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

BaseType_t FUNC9( QueueHandle_t xQueue, BaseType_t xNewQueue )
{
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	FUNC0( pxQueue );

	if ( xNewQueue == pdTRUE )
	{
		FUNC7(&pxQueue->mux);
	}
	FUNC4(&pxQueue->mux);
	{
		pxQueue->pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize );
		pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
		pxQueue->pcWriteTo = pxQueue->pcHead;
		pxQueue->u.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - ( UBaseType_t ) 1U ) * pxQueue->uxItemSize );

		if( xNewQueue == pdFALSE )
		{
			/* If there are tasks blocked waiting to read from the queue, then
			the tasks will remain blocked as after this function exits the queue
			will still be empty.  If there are tasks blocked waiting to write to
			the queue, then one should be unblocked as after this function exits
			it will be possible to write to it. */
			if( FUNC1( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
			{
				if( FUNC8( &( pxQueue->xTasksWaitingToSend ) ) == pdTRUE )
				{
					FUNC3();
				}
				else
				{
					FUNC2();
				}
			}
			else
			{
				FUNC2();
			}
		}
		else
		{
			/* Ensure the event queues start in the correct state. */
			FUNC6( &( pxQueue->xTasksWaitingToSend ) );
			FUNC6( &( pxQueue->xTasksWaitingToReceive ) );
		}
	}
	FUNC5(&pxQueue->mux);

	/* A value is returned for calling semantic consistency with previous
	versions. */
	return pdPASS;
}