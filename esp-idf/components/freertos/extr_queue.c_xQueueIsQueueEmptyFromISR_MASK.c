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
struct TYPE_2__ {scalar_t__ uxMessagesWaiting; int /*<<< orphan*/  mux; } ;
typedef  TYPE_1__ Queue_t ;
typedef  scalar_t__ QueueHandle_t ;
typedef  int /*<<< orphan*/  BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  pdTRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

BaseType_t FUNC3( QueueHandle_t xQueue )
{
BaseType_t xReturn;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

	FUNC0( xQueue );
	FUNC1(&pxQueue->mux);
	if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( UBaseType_t ) 0 )
	{
		xReturn = pdTRUE;
	}
	else
	{
		xReturn = pdFALSE;
	}
	FUNC2(&pxQueue->mux);

	return xReturn;
}