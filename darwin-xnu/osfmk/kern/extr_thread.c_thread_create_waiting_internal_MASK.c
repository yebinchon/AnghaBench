#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  TYPE_2__* task_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  block_hint_t ;
struct TYPE_18__ {scalar_t__ suspend_count; } ;
struct TYPE_17__ {int static_param; } ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_2__* TASK_NULL ; 
 int /*<<< orphan*/  THREAD_INTERRUPTIBLE ; 
 int TH_OPTION_WORKQ ; 
 TYPE_2__* kernel_task ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  tasks_threads_lock ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static kern_return_t
FUNC9(
	task_t                  task,
	thread_continue_t       continuation,
	event_t                 event,
	block_hint_t            block_hint,
	int                     options,
	thread_t                *new_thread)
{
	kern_return_t result;
	thread_t thread;

	if (task == TASK_NULL || task == kernel_task)
		return (KERN_INVALID_ARGUMENT);

	result = FUNC2(task, -1, continuation, NULL,
			options, &thread);
	if (result != KERN_SUCCESS)
		return (result);

	/* note no user_stop_count or thread_hold here */

	if (task->suspend_count > 0)
		FUNC3(thread);

	FUNC4(thread);
	FUNC6(thread, block_hint);
	if (options & TH_OPTION_WORKQ) {
		thread->static_param = true;
		event = FUNC8(task, thread);
	}
	FUNC7(thread, event, THREAD_INTERRUPTIBLE);
	FUNC5(thread);

	FUNC1(task);
	FUNC0(&tasks_threads_lock);

	*new_thread = thread;

	return (KERN_SUCCESS);
}