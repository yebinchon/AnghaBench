#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_7__ {int p_memstat_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 TYPE_1__* PROC_NULL ; 
 int P_MEMSTAT_FREEZE_DISABLED ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(pid_t pid, int *is_freezable)
{
	proc_t p = PROC_NULL;

	if (pid == 0) {
		return EINVAL;
	}

	p = FUNC1(pid);
	if (!p) {
		return ESRCH;
	}

	/*
	 * Only allow this on the current proc for now.
	 * We can check for privileges and allow targeting another process in the future.
	 */
	if (p != FUNC0()) {
		FUNC4(p);
		return EPERM;
	}

	FUNC2();
	*is_freezable = ((p->p_memstat_state & P_MEMSTAT_FREEZE_DISABLED) ? 0 : 1);
	FUNC5(p);
	FUNC3();

	return 0;
}