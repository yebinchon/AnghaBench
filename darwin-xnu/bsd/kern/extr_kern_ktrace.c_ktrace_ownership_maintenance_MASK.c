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
typedef  int /*<<< orphan*/ * proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ktrace_owning_pid ; 
 scalar_t__ ktrace_owning_unique_id ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC0();

	/* do nothing if ktrace is not owned */
	if (ktrace_owning_unique_id == 0) {
		return;
	}

	/* reset ownership if process cannot be found */

	proc_t owning_proc = FUNC2(ktrace_owning_pid);

	if (owning_proc != NULL) {
		/* make sure the pid was not recycled */
		if (FUNC4(owning_proc) != ktrace_owning_unique_id) {
			FUNC1();
		}

		FUNC3(owning_proc);
	} else {
		FUNC1();
	}
}