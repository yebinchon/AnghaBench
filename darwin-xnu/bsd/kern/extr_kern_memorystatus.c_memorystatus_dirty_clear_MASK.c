#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {int p_memstat_dirty; int p_listflag; int p_memstat_state; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_MEMSTAT_DIRTY_CLEAR ; 
 int /*<<< orphan*/  DBG_BSD_MEMSTAT ; 
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int PROC_DIRTY_DEFER ; 
 int PROC_DIRTY_DEFER_ALWAYS ; 
 int PROC_DIRTY_LAUNCH_IN_PROGRESS ; 
 int P_DIRTY_DEFER ; 
 int P_DIRTY_DEFER_ALWAYS ; 
 int P_DIRTY_LAUNCH_IN_PROGRESS ; 
 int P_DIRTY_TRACK ; 
 int P_LIST_EXITED ; 
 int P_MEMSTAT_INTERNAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(proc_t p, uint32_t pcontrol) {

	int ret = 0;

	FUNC2(1, "memorystatus_dirty_clear(): %d 0x%x 0x%x\n", p->p_pid, pcontrol, p->p_memstat_dirty);
	
	FUNC1(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_DIRTY_CLEAR), p->p_pid, pcontrol, 0, 0, 0);

	FUNC6();

	if ((p->p_listflag & P_LIST_EXITED) != 0) {
		/*
		 * Process is on its way out.
		 */
		ret = EBUSY;
		goto exit;
	}

	if (p->p_memstat_state & P_MEMSTAT_INTERNAL) {
		ret = EPERM;
		goto exit;
	}

	if (!(p->p_memstat_dirty & P_DIRTY_TRACK)) {
		/* Dirty tracking not enabled */
		ret = EINVAL;			
		goto exit;
	} 

	if (!pcontrol || (pcontrol & (PROC_DIRTY_LAUNCH_IN_PROGRESS | PROC_DIRTY_DEFER | PROC_DIRTY_DEFER_ALWAYS)) == 0) {
		ret = EINVAL;
		goto exit;
	}

	if (pcontrol & PROC_DIRTY_LAUNCH_IN_PROGRESS) {
		p->p_memstat_dirty &= ~P_DIRTY_LAUNCH_IN_PROGRESS;
	}

	/* This can be set and cleared exactly once. */
	if (pcontrol & (PROC_DIRTY_DEFER | PROC_DIRTY_DEFER_ALWAYS)) {

		if (p->p_memstat_dirty & P_DIRTY_DEFER) {
			p->p_memstat_dirty &= ~(P_DIRTY_DEFER);
		}

		if (p->p_memstat_dirty & P_DIRTY_DEFER_ALWAYS) {
			p->p_memstat_dirty &= ~(P_DIRTY_DEFER_ALWAYS);
		}

		FUNC3(p, TRUE);
		FUNC5(p);
		FUNC4();
	}

	ret = 0;
exit:
	FUNC7();

	return ret;
}