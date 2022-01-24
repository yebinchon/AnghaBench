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
typedef  scalar_t__ TickType_t ;
struct TYPE_2__ {scalar_t__ uxPriority; int /*<<< orphan*/  xEventListItem; } ;

/* Variables and functions */
 scalar_t__ configMAX_PRIORITIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__** pxCurrentTCB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  xTaskQueueMutex ; 

TickType_t FUNC5( void )
{
TickType_t uxReturn;
	FUNC2(&xTaskQueueMutex);
	uxReturn = FUNC0( &( pxCurrentTCB[ FUNC4() ]->xEventListItem ) );

	/* Reset the event list item to its normal value - so it can be used with
	queues and semaphores. */
	FUNC1( &( pxCurrentTCB[ FUNC4() ]->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB[ FUNC4() ]->uxPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	FUNC3(&xTaskQueueMutex);

	return uxReturn;
}