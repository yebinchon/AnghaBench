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
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/ * processor_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  system_timer; int /*<<< orphan*/  user_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_timer ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t FUNC7(void)
{
	boolean_t interrupt_state;
	uint64_t runtime;
	thread_t thread = NULL;
	processor_t processor = NULL;

	thread = FUNC2();

	/* Not interrupt safe, as the scheduler may otherwise update timer values underneath us */
	interrupt_state = FUNC4(FALSE);
	processor = FUNC1();
	FUNC6(FUNC0(processor, thread_timer), FUNC3());
	runtime = (FUNC5(&thread->user_timer) + FUNC5(&thread->system_timer));
	FUNC4(interrupt_state);

	return runtime;
}