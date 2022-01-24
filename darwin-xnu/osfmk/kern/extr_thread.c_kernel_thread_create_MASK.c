#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  integer_t ;
struct TYPE_6__ {scalar_t__ kernel_stack; scalar_t__ reserved_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASEPRI_KERNEL ; 
 scalar_t__ KERN_SUCCESS ; 
 int TH_OPTION_NOCRED ; 
 int TH_OPTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int debug_task ; 
 int /*<<< orphan*/  kernel_task ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasks_threads_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,TYPE_1__**) ; 

kern_return_t
FUNC6(
	thread_continue_t	continuation,
	void				*parameter,
	integer_t			priority,
	thread_t			*new_thread)
{
	kern_return_t		result;
	thread_t			thread;
	task_t				task = kernel_task;

	result = FUNC5(task, priority, continuation, parameter,
			TH_OPTION_NOCRED | TH_OPTION_NONE, &thread);
	if (result != KERN_SUCCESS)
		return (result);

	FUNC4(task);
	FUNC2(&tasks_threads_lock);

	FUNC3(thread);
	FUNC0(thread->kernel_stack != 0);
#if CONFIG_EMBEDDED
	if (priority > BASEPRI_KERNEL)
#endif
	thread->reserved_stack = thread->kernel_stack;

if(debug_task & 1)
	FUNC1("kernel_thread_create: thread = %p continuation = %p\n", thread, continuation);
	*new_thread = thread;

	return (result);
}