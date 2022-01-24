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
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ p_refcount; int /*<<< orphan*/  p_listflag; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  P_LIST_DEAD ; 
 int /*<<< orphan*/  P_LIST_DRAIN ; 
 int /*<<< orphan*/  P_LIST_DRAINWAIT ; 
 int /*<<< orphan*/  P_LIST_REFWAIT ; 
 scalar_t__ TRUE ; 
 TYPE_1__* initproc ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  proc_list_mlock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

proc_t
FUNC4(proc_t p, boolean_t get_ref_and_allow_wait)
{
	boolean_t initexec = FALSE;
	FUNC1();

	p->p_listflag |= P_LIST_DRAIN;
	if (get_ref_and_allow_wait) {
		/*
		 * All the calls to proc_ref_locked will wait
		 * for the flag to get cleared before returning a ref,
		 * unless the current thread is holding to a proc ref
		 * for any proc.
		 */
		p->p_listflag |= P_LIST_REFWAIT;
		if (p == initproc) {
			initexec = TRUE;
		}
	}

	/* Do not wait in ref drain for launchd exec */
	while (p->p_refcount && !initexec) {
		p->p_listflag |= P_LIST_DRAINWAIT;
		FUNC0(&p->p_refcount, proc_list_mlock, 0, "proc_refdrain", 0) ;
	}

	p->p_listflag &= ~P_LIST_DRAIN;
	if (!get_ref_and_allow_wait) {
		p->p_listflag |= P_LIST_DEAD;
	} else {
		/* Return a ref to the caller */
		p->p_refcount++;
		FUNC3(p, 1);
	}

	FUNC2();

	if (get_ref_and_allow_wait) {
		return (p);
	}
	return NULL;
}