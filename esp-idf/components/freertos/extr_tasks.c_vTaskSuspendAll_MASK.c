#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * uxSchedulerSuspended ; 
 size_t FUNC2 () ; 

void FUNC3( void )
{
	/* A critical section is not required as the variable is of type
	BaseType_t.  Please read Richard Barry's reply in the following link to a
	post in the FreeRTOS support forum before reporting this as a bug! -
	http://goo.gl/wu4acr */
	unsigned state;

	state = FUNC0();
	++uxSchedulerSuspended[ FUNC2() ];
	FUNC1(state);
}