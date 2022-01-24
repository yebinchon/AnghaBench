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
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {int p_pid; char* p_name; int /*<<< orphan*/  p_memstat_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 scalar_t__ FALSE ; 
 TYPE_1__* PROC_NULL ; 
 int /*<<< orphan*/  P_MEMSTAT_FREEZE_DISABLED ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(pid_t pid, boolean_t is_freezable)
{
	proc_t p = PROC_NULL;

	if (pid == 0) {
		return EINVAL;
	}

	p = FUNC2(pid);
	if (!p) {
		return ESRCH;
	}

	/*
	 * Only allow this on the current proc for now.
	 * We can check for privileges and allow targeting another process in the future.
	 */
	if (p != FUNC0()) {
		FUNC5(p);
		return EPERM;
	}

	FUNC3();
	if (is_freezable == FALSE) {
		/* Freeze preference set to FALSE. Set the P_MEMSTAT_FREEZE_DISABLED bit. */
		p->p_memstat_state |= P_MEMSTAT_FREEZE_DISABLED;
		FUNC1("memorystatus_set_process_is_freezable: disabling freeze for pid %d [%s]\n",
				p->p_pid, (*p->p_name ? p->p_name : "unknown"));
	} else {
		p->p_memstat_state &= ~P_MEMSTAT_FREEZE_DISABLED;
		FUNC1("memorystatus_set_process_is_freezable: enabling freeze for pid %d [%s]\n",
				p->p_pid, (*p->p_name ? p->p_name : "unknown"));
	}
	FUNC6(p);
	FUNC4();

	return 0;
}