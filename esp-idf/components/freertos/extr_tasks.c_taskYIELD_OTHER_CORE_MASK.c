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
typedef  scalar_t__ UBaseType_t ;
struct TYPE_3__ {scalar_t__ uxPriority; } ;
typedef  TYPE_1__ TCB_t ;
typedef  size_t BaseType_t ;

/* Variables and functions */
 size_t portNUM_PROCESSORS ; 
 TYPE_1__** pxCurrentTCB ; 
 size_t tskNO_AFFINITY ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 () ; 

void FUNC2( BaseType_t xCoreID, UBaseType_t uxPriority )
{
	TCB_t *curTCB = pxCurrentTCB[xCoreID];
	BaseType_t i;

	if (xCoreID != tskNO_AFFINITY) {
		if ( curTCB->uxPriority < uxPriority ) {
			FUNC0( xCoreID );
		}
	}
	else
	{
		/* The task has no affinity. See if we can find a CPU to put it on.*/
		for (i=0; i<portNUM_PROCESSORS; i++) {
			if (i != FUNC1() && pxCurrentTCB[ i ]->uxPriority < uxPriority)
			{
				FUNC0( i );
				break;
			}
		}
	}
}