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
struct uthread {scalar_t__ uu_exit_reason; } ;
struct task {int dummy; } ;
typedef  int /*<<< orphan*/ * proc_t ;
typedef  scalar_t__ os_reason_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ OS_REASON_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task*) ; 
 struct uthread* FUNC2 (void*) ; 
 struct task* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(void *th, void *reason, boolean_t proc_locked)
{
	struct uthread *targ_uth = FUNC2(th);
	struct task *targ_task = NULL;
	proc_t targ_proc = NULL;

	os_reason_t exit_reason = (os_reason_t)reason;

	if (exit_reason == OS_REASON_NULL)
		return;

	if (!proc_locked) {
		targ_task = FUNC3(th);
		targ_proc = (proc_t)(FUNC1(targ_task));

		FUNC5(targ_proc);
	}

	if (targ_uth->uu_exit_reason == OS_REASON_NULL) {
		targ_uth->uu_exit_reason = exit_reason;
	} else {
		/* The caller expects that we drop a reference on the exit reason */
		FUNC4(exit_reason);
	}

	if (!proc_locked) {
		FUNC0(targ_proc != NULL);
		FUNC6(targ_proc);
	}
}