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
typedef  TYPE_1__* proc_t ;
struct TYPE_8__ {int p_listflag; scalar_t__ p_stat; int /*<<< orphan*/  p_refcount; } ;

/* Variables and functions */
 TYPE_1__* PROC_NULL ; 
 int P_LIST_DEAD ; 
 int P_LIST_DRAIN ; 
 int P_LIST_DRAINWAIT ; 
 int P_LIST_EXITED ; 
 int P_LIST_INCREATE ; 
 int P_LIST_REFWAIT ; 
 scalar_t__ SZOMB ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  proc_list_mlock ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 () ; 

proc_t
FUNC5(proc_t p)
{
	proc_t p1 = p;
	int pid = FUNC2(p);
	
retry:
	/*
	 * if process still in creation or proc got recycled
	 * during msleep then return failure.
	 */
	if ((p == PROC_NULL) || (p1 != p) || ((p->p_listflag & P_LIST_INCREATE) != 0))
			return (PROC_NULL);

	/*
	 * Do not return process marked for termination
	 * or proc_refdrain called without ref wait.
	 * Wait for proc_refdrain_with_refwait to complete if
	 * process in refdrain and refwait flag is set, unless
	 * the current thread is holding to a proc_ref
	 * for any proc.
	 */
	if ((p->p_stat != SZOMB) &&
	    ((p->p_listflag & P_LIST_EXITED) == 0) &&
	    ((p->p_listflag & P_LIST_DEAD) == 0) &&
	    (((p->p_listflag & (P_LIST_DRAIN | P_LIST_DRAINWAIT)) == 0) ||
	     ((p->p_listflag & P_LIST_REFWAIT) != 0))) {
		if ((p->p_listflag & P_LIST_REFWAIT) != 0 && FUNC4()) {
			FUNC0(&p->p_listflag, proc_list_mlock, 0, "proc_refwait", 0) ;
			/*
			 * the proc might have been recycled since we dropped
			 * the proc list lock, get the proc again.
			 */
			p = FUNC1(pid);
			goto retry;
		}
		p->p_refcount++;
		FUNC3(p, 1);
	}
	else 
		p1 = PROC_NULL;

	return(p1);
}