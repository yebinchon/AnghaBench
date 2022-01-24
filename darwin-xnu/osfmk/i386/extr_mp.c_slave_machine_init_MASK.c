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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FULL_SLAVE_INIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void *param)
{
	/*
 	 * Here in process context, but with interrupts disabled.
	 */
	FUNC0("slave_machine_init() CPU%d\n", FUNC3());

	if (param == FULL_SLAVE_INIT) {
		/*
		 * Cold start
		 */
		FUNC1();
	}
	FUNC2();	/* Interrupts enabled hereafter */
}