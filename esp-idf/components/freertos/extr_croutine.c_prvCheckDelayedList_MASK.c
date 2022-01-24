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
struct TYPE_6__ {scalar_t__ pvContainer; } ;
struct TYPE_5__ {TYPE_2__ xEventListItem; TYPE_2__ xGenericListItem; } ;
typedef  int /*<<< orphan*/  List_t ;
typedef  TYPE_1__ CRCB_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * pxDelayedCoRoutineList ; 
 int /*<<< orphan*/ * pxOverflowDelayedCoRoutineList ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ xCoRoutineTickCount ; 
 scalar_t__ xLastTickCount ; 
 scalar_t__ xPassedTicks ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void FUNC8( void )
{
CRCB_t *pxCRCB;

	xPassedTicks = FUNC7() - xLastTickCount;
	while( xPassedTicks )
	{
		xCoRoutineTickCount++;
		xPassedTicks--;

		/* If the tick count has overflowed we need to swap the ready lists. */
		if( xCoRoutineTickCount == 0 )
		{
			List_t * pxTemp;

			/* Tick count has overflowed so we need to swap the delay lists.  If there are
			any items in pxDelayedCoRoutineList here then there is an error! */
			pxTemp = pxDelayedCoRoutineList;
			pxDelayedCoRoutineList = pxOverflowDelayedCoRoutineList;
			pxOverflowDelayedCoRoutineList = pxTemp;
		}

		/* See if this tick has made a timeout expire. */
		while( FUNC2( pxDelayedCoRoutineList ) == pdFALSE )
		{
			pxCRCB = ( CRCB_t * ) FUNC1( pxDelayedCoRoutineList );

			if( xCoRoutineTickCount < FUNC0( &( pxCRCB->xGenericListItem ) ) )
			{
				/* Timeout not yet expired. */
				break;
			}

			FUNC3();
			{
				/* The event could have occurred just before this critical
				section.  If this is the case then the generic list item will
				have been moved to the pending ready list and the following
				line is still valid.  Also the pvContainer parameter will have
				been set to NULL so the following lines are also valid. */
				( void ) FUNC6( &( pxCRCB->xGenericListItem ) );

				/* Is the co-routine waiting on an event also? */
				if( pxCRCB->xEventListItem.pvContainer )
				{
					( void ) FUNC6( &( pxCRCB->xEventListItem ) );
				}
			}
			FUNC4();

			FUNC5( pxCRCB );
		}
	}

	xLastTickCount = xCoRoutineTickCount;
}