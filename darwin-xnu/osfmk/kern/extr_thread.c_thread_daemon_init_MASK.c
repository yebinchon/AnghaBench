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
typedef  int /*<<< orphan*/ * thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  BASEPRI_PREEMPT_HIGH ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MINPRI_KERNEL ; 
 int /*<<< orphan*/  crashed_threads_queue ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_deallocate_queue ; 
 scalar_t__ thread_exception_daemon ; 
 int /*<<< orphan*/  thread_exception_lock ; 
 int /*<<< orphan*/  thread_exception_queue ; 
 scalar_t__ thread_stack_daemon ; 
 int /*<<< orphan*/  thread_stack_lock ; 
 int /*<<< orphan*/  thread_stack_queue ; 
 scalar_t__ thread_terminate_daemon ; 
 int /*<<< orphan*/  thread_terminate_lock ; 
 int /*<<< orphan*/  thread_terminate_queue ; 
 int /*<<< orphan*/  turnstile_deallocate_queue ; 
 int /*<<< orphan*/  workq_deallocate_queue ; 

void
FUNC5(void)
{
	kern_return_t	result;
	thread_t	thread = NULL;

	FUNC3(&thread_terminate_lock, 0);
	FUNC2(&thread_terminate_queue);
	FUNC2(&thread_deallocate_queue);
	FUNC2(&workq_deallocate_queue);
	FUNC2(&turnstile_deallocate_queue);
	FUNC2(&crashed_threads_queue);

	result = FUNC0((thread_continue_t)thread_terminate_daemon, NULL, MINPRI_KERNEL, &thread);
	if (result != KERN_SUCCESS)
		FUNC1("thread_daemon_init: thread_terminate_daemon");

	FUNC4(thread);

	FUNC3(&thread_stack_lock, 0);
	FUNC2(&thread_stack_queue);

	result = FUNC0((thread_continue_t)thread_stack_daemon, NULL, BASEPRI_PREEMPT_HIGH, &thread);
	if (result != KERN_SUCCESS)
		FUNC1("thread_daemon_init: thread_stack_daemon");

	FUNC4(thread);

	FUNC3(&thread_exception_lock, 0);
	FUNC2(&thread_exception_queue);

	result = FUNC0((thread_continue_t)thread_exception_daemon, NULL, MINPRI_KERNEL, &thread);
	if (result != KERN_SUCCESS)
		FUNC1("thread_daemon_init: thread_exception_daemon");

	FUNC4(thread);
}