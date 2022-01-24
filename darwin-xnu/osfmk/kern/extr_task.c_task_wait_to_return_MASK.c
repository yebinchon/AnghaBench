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
typedef  TYPE_1__* task_t ;
struct TYPE_6__ {int t_flags; } ;

/* Variables and functions */
 int TF_LRETURNWAIT ; 
 int TF_LRETURNWAITER ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void __attribute__((noreturn))
FUNC9(void)
{
	task_t task;

	task = FUNC2();
	FUNC5(task);

	if (task->t_flags & TF_LRETURNWAIT) {
		do {
			task->t_flags |= TF_LRETURNWAITER;
			FUNC0(FUNC4(task), THREAD_UNINT);
			FUNC6(task);

			FUNC7(THREAD_CONTINUE_NULL);

			FUNC5(task);
		} while (task->t_flags & TF_LRETURNWAIT);
	}

	FUNC6(task);

#if CONFIG_MACF
	/*
	 * Before jumping to userspace and allowing this process to execute any code,
	 * notify any interested parties.
	 */
	mac_proc_notify_exec_complete(current_proc());
#endif

	FUNC8();
}