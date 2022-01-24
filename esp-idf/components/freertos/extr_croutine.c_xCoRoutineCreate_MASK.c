#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  crCOROUTINE_CODE ;
typedef  scalar_t__ UBaseType_t ;
typedef  scalar_t__ TickType_t ;
struct TYPE_5__ {int /*<<< orphan*/  xEventListItem; int /*<<< orphan*/  xGenericListItem; int /*<<< orphan*/  pxCoRoutineFunction; scalar_t__ uxIndex; scalar_t__ uxPriority; int /*<<< orphan*/  uxState; } ;
typedef  TYPE_1__ CRCB_t ;
typedef  int /*<<< orphan*/  BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ configMAX_CO_ROUTINE_PRIORITIES ; 
 int /*<<< orphan*/  corINITIAL_STATE ; 
 int /*<<< orphan*/  errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  pdPASS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__* pxCurrentCoRoutine ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

BaseType_t FUNC7( crCOROUTINE_CODE pxCoRoutineCode, UBaseType_t uxPriority, UBaseType_t uxIndex )
{
BaseType_t xReturn;
CRCB_t *pxCoRoutine;

	FUNC0(); //Actually, coroutines are entirely unsupported
	/* Allocate the memory that will store the co-routine control block. */
	pxCoRoutine = ( CRCB_t * ) FUNC5( sizeof( CRCB_t ) );
	if( pxCoRoutine )
	{
		/* If pxCurrentCoRoutine is NULL then this is the first co-routine to
		be created and the co-routine data structures need initialising. */
		if( pxCurrentCoRoutine == NULL )
		{
			pxCurrentCoRoutine = pxCoRoutine;
			FUNC4();
		}

		/* Check the priority is within limits. */
		if( uxPriority >= configMAX_CO_ROUTINE_PRIORITIES )
		{
			uxPriority = configMAX_CO_ROUTINE_PRIORITIES - 1;
		}

		/* Fill out the co-routine control block from the function parameters. */
		pxCoRoutine->uxState = corINITIAL_STATE;
		pxCoRoutine->uxPriority = uxPriority;
		pxCoRoutine->uxIndex = uxIndex;
		pxCoRoutine->pxCoRoutineFunction = pxCoRoutineCode;

		/* Initialise all the other co-routine control block parameters. */
		FUNC6( &( pxCoRoutine->xGenericListItem ) );
		FUNC6( &( pxCoRoutine->xEventListItem ) );

		/* Set the co-routine control block as a link back from the ListItem_t.
		This is so we can get back to the containing CRCB from a generic item
		in a list. */
		FUNC1( &( pxCoRoutine->xGenericListItem ), pxCoRoutine );
		FUNC1( &( pxCoRoutine->xEventListItem ), pxCoRoutine );

		/* Event lists are always in priority order. */
		FUNC2( &( pxCoRoutine->xEventListItem ), ( ( TickType_t ) configMAX_CO_ROUTINE_PRIORITIES - ( TickType_t ) uxPriority ) );

		/* Now the co-routine has been initialised it can be added to the ready
		list at the correct priority. */
		FUNC3( pxCoRoutine );

		xReturn = pdPASS;
	}
	else
	{
		xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
	}

	return xReturn;
}