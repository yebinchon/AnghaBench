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
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_5__ {int /*<<< orphan*/  runq_links; } ;

/* Variables and functions */
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_STACK_WAIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_stack_lock ; 
 int /*<<< orphan*/  thread_stack_queue ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(
	thread_t		thread)
{
	FUNC0(FUNC1(DBG_MACH_SCHED,MACH_STACK_WAIT) | DBG_FUNC_START, FUNC6(thread), 0, 0, 0, 0);
	FUNC2(thread);

	FUNC4(&thread_stack_lock);
	FUNC3(&thread_stack_queue, &thread->runq_links);
	FUNC5(&thread_stack_lock);

	FUNC7((event_t)&thread_stack_queue);
}