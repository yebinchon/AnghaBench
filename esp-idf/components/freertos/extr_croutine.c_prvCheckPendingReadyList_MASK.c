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
struct TYPE_3__ {int /*<<< orphan*/  xGenericListItem; int /*<<< orphan*/  xEventListItem; } ;
typedef  TYPE_1__ CRCB_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xPendingReadyCoRoutineList ; 

__attribute__((used)) static void FUNC6( void )
{
	/* Are there any co-routines waiting to get moved to the ready list?  These
	are co-routines that have been readied by an ISR.  The ISR cannot access
	the	ready lists itself. */
	while( FUNC1( &xPendingReadyCoRoutineList ) == pdFALSE )
	{
		CRCB_t *pxUnblockedCRCB;

		/* The pending ready list can be accessed by an ISR. */
		FUNC2();
		{
			pxUnblockedCRCB = ( CRCB_t * ) FUNC0( (&xPendingReadyCoRoutineList) );
			( void ) FUNC5( &( pxUnblockedCRCB->xEventListItem ) );
		}
		FUNC3();

		( void ) FUNC5( &( pxUnblockedCRCB->xGenericListItem ) );
		FUNC4( pxUnblockedCRCB );
	}
}