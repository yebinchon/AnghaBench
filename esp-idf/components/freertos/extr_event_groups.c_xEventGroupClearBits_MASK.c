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
struct TYPE_2__ {int uxEventBits; int /*<<< orphan*/  eventGroupMux; } ;
typedef  TYPE_1__ EventGroup_t ;
typedef  int EventGroupHandle_t ;
typedef  int EventBits_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const eventEVENT_BITS_CONTROL_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int const) ; 

EventBits_t FUNC4( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
EventBits_t uxReturn;

	/* Check the user is not attempting to clear the bits used by the kernel
	itself. */
	FUNC0( xEventGroup );
	FUNC0( ( uxBitsToClear & eventEVENT_BITS_CONTROL_BYTES ) == 0 );

	FUNC1( &pxEventBits->eventGroupMux );
	{
		FUNC3( xEventGroup, uxBitsToClear );

		/* The value returned is the event group value prior to the bits being
		cleared. */
		uxReturn = pxEventBits->uxEventBits;

		/* Clear the bits. */
		pxEventBits->uxEventBits &= ~uxBitsToClear;
	}
	FUNC2( &pxEventBits->eventGroupMux );

	return uxReturn;
}