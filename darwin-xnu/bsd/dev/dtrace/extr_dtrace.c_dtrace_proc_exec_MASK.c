#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ p_dtrace_probes; int /*<<< orphan*/ * p_dtrace_helpers; } ;
typedef  TYPE_1__ proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(proc_t *p)
{
	/*
	 * Invalidate any predicate evaluation already cached for this thread by DTrace.
	 * That's because we've just stored to p_comm and DTrace refers to that when it
	 * evaluates the "execname" special variable. uid and gid may have changed as well.
	 */
	FUNC4(FUNC0(), 0);

	/*
	 * Free any outstanding lazy dof entries. It is imperative we
	 * always call dtrace_lazy_dofs_destroy, rather than null check
	 * and call if !NULL. If we NULL test, during lazy dof faulting
	 * we can race with the faulting code and proceed from here to
	 * beyond the helpers cleanup. The lazy dof faulting will then
	 * install new helpers which no longer belong to this process!
	 */
	FUNC3(p);


	/*
	 * Clean up any DTrace helpers for the process.
	 */
	if (p->p_dtrace_helpers != NULL && &dtrace_helpers_cleanup) {
		FUNC2)(p);
	}

	/*
	 * Cleanup the DTrace provider associated with this process.
	 */
	FUNC5(p);
	if (p->p_dtrace_probes && &dtrace_fasttrap_exec_ptr) {
		FUNC1)(p);
	}
	FUNC6(p);
}