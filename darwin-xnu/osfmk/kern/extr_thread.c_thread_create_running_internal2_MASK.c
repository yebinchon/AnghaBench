#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ suspend_count; } ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  TH_OPTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* kernel_task ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  tasks_threads_lock ; 
 scalar_t__ thread_bootstrap_return ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC12(
	task_t         task,
	int                     flavor,
	thread_state_t          new_state,
	mach_msg_type_number_t  new_state_count,
	thread_t				*new_thread,
	boolean_t				from_user)
{
	kern_return_t  result;
	thread_t				thread;

	if (task == TASK_NULL || task == kernel_task)
		return (KERN_INVALID_ARGUMENT);

	result = FUNC5(task, -1,
			(thread_continue_t)thread_bootstrap_return, NULL,
			TH_OPTION_NONE, &thread);
	if (result != KERN_SUCCESS)
		return (result);

	if (task->suspend_count > 0)
		FUNC7(thread);

	if (from_user) {
		result = FUNC3(thread, flavor,
				new_state, new_state_count);
	}
	if (result == KERN_SUCCESS) {
		result = FUNC2(thread, flavor, new_state,
				new_state_count);
	}
	if (result != KERN_SUCCESS) {
		FUNC4(task);
		FUNC1(&tasks_threads_lock);

		FUNC11(thread);
		FUNC6(thread);
		return (result);
	}

	FUNC8(thread);
	FUNC10(thread);
	FUNC9(thread);

	if (from_user)
		FUNC0(task);

	FUNC4(task);
	FUNC1(&tasks_threads_lock);

	*new_thread = thread;

	return (result);
}