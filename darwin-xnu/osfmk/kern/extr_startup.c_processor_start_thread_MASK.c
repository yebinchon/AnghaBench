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
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  TYPE_1__* processor_t ;
struct TYPE_3__ {scalar_t__ idle_thread; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ idle_thread ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void
FUNC5(void *machine_param)
{
	processor_t		processor = FUNC0();
	thread_t		self = FUNC1();

	FUNC2(machine_param);

	/*
	 *	If running the idle processor thread,
	 *	reenter the idle loop, else terminate.
	 */
	if (self == processor->idle_thread)
		FUNC3((thread_continue_t)idle_thread);

	FUNC4(self);
	/*NOTREACHED*/
}