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
typedef  int uint32_t ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {unsigned int p_memstat_dirty; int p_listflag; int p_memstat_state; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_MEMSTAT_DIRTY_TRACK ; 
 int /*<<< orphan*/  DBG_BSD_MEMSTAT ; 
 int EBUSY ; 
 int EPERM ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int PROC_DIRTY_ALLOW_IDLE_EXIT ; 
 int PROC_DIRTY_DEFER ; 
 int PROC_DIRTY_DEFER_ALWAYS ; 
 int PROC_DIRTY_LAUNCH_IN_PROGRESS ; 
 int PROC_DIRTY_TRACK ; 
 int P_DIRTY ; 
 unsigned int P_DIRTY_AGING_IN_PROGRESS ; 
 unsigned int P_DIRTY_ALLOW_IDLE_EXIT ; 
 unsigned int P_DIRTY_DEFER ; 
 unsigned int P_DIRTY_DEFER_ALWAYS ; 
 int P_DIRTY_IDLE_EXIT_ENABLED ; 
 int P_DIRTY_IS_DIRTY ; 
 unsigned int P_DIRTY_LAUNCH_IN_PROGRESS ; 
 unsigned int P_DIRTY_TRACK ; 
 int P_LIST_EXITED ; 
 int P_MEMSTAT_INTERNAL ; 
 scalar_t__ TRUE ; 
 scalar_t__ jetsam_aging_policy ; 
 scalar_t__ kJetsamAgingPolicyLegacy ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(proc_t p, uint32_t pcontrol) {
	unsigned int old_dirty;
	boolean_t reschedule = FALSE;
	boolean_t already_deferred = FALSE;
	boolean_t defer_now = FALSE;
	int ret = 0;
    
	FUNC1(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_DIRTY_TRACK),
		p->p_pid, p->p_memstat_dirty, pcontrol, 0, 0);
	
	FUNC8();
	
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
	
	if ((ret = FUNC7(p, pcontrol)) != 0) {
		/* error  */
		goto exit;
	}

        old_dirty = p->p_memstat_dirty;

	/* These bits are cumulative, as per <rdar://problem/11159924> */
	if (pcontrol & PROC_DIRTY_TRACK) {
		p->p_memstat_dirty |= P_DIRTY_TRACK;
	}

	if (pcontrol & PROC_DIRTY_ALLOW_IDLE_EXIT) {
		p->p_memstat_dirty |= P_DIRTY_ALLOW_IDLE_EXIT;					
	}

	if (pcontrol & PROC_DIRTY_LAUNCH_IN_PROGRESS) {
		p->p_memstat_dirty |= P_DIRTY_LAUNCH_IN_PROGRESS;
	}

	if (old_dirty & P_DIRTY_AGING_IN_PROGRESS) {
		already_deferred = TRUE;
	}


	/* This can be set and cleared exactly once. */
	if (pcontrol & (PROC_DIRTY_DEFER | PROC_DIRTY_DEFER_ALWAYS)) {

		if ((pcontrol & (PROC_DIRTY_DEFER)) &&
		    !(old_dirty & P_DIRTY_DEFER)) {
			p->p_memstat_dirty |= P_DIRTY_DEFER;
		}

		if ((pcontrol & (PROC_DIRTY_DEFER_ALWAYS)) &&
		    !(old_dirty & P_DIRTY_DEFER_ALWAYS)) {
			p->p_memstat_dirty |= P_DIRTY_DEFER_ALWAYS;
		}

		defer_now = TRUE;
	}

	FUNC2(1, "memorystatus_on_track_dirty(): set idle-exit %s / defer %s / dirty %s for pid %d\n",
		((p->p_memstat_dirty & P_DIRTY_IDLE_EXIT_ENABLED) == P_DIRTY_IDLE_EXIT_ENABLED) ? "Y" : "N",
		defer_now ? "Y" : "N",
		p->p_memstat_dirty & P_DIRTY ? "Y" : "N",
		p->p_pid);

	/* Kick off or invalidate the idle exit deferment if there's a state transition. */
	if (!(p->p_memstat_dirty & P_DIRTY_IS_DIRTY)) {
		if ((p->p_memstat_dirty & P_DIRTY_IDLE_EXIT_ENABLED) == P_DIRTY_IDLE_EXIT_ENABLED) {

			if (defer_now && !already_deferred) {
				
				/*
				 * Request to defer a clean process that's idle-exit enabled 
				 * and not already in the jetsam deferred band. Most likely a
				 * new launch.
				 */
				FUNC5(p, TRUE);
				reschedule = TRUE;

			} else if (!defer_now) {

				/*
				 * The process isn't asking for the 'aging' facility.
				 * Could be that it is:
				 */

				if (already_deferred) {
					/*
					 * already in the aging bands. Traditionally,
					 * some processes have tried to use this to
					 * opt out of the 'aging' facility.
					 */
				
					FUNC3(p, TRUE);
				} else {
					/*
					 * agnostic to the 'aging' facility. In that case,
					 * we'll go ahead and opt it in because this is likely
					 * a new launch (clean process, dirty tracking enabled)
					 */
				
					FUNC5(p, TRUE);
				}

				reschedule = TRUE;
			}
		}
	} else {

		/*
		 * We are trying to operate on a dirty process. Dirty processes have to
		 * be removed from the deferred band. The question is do we reset the 
		 * deferred state or not?
		 *
		 * This could be a legal request like:
		 * - this process had opted into the 'aging' band
		 * - but it's now dirty and requests to opt out.
		 * In this case, we remove the process from the band and reset its
		 * state too. It'll opt back in properly when needed.
		 *
		 * OR, this request could be a user-space bug. E.g.:
		 * - this process had opted into the 'aging' band when clean
		 * - and, then issues another request to again put it into the band except
		 *   this time the process is dirty.
		 * The process going dirty, as a transition in memorystatus_dirty_set(), will pull the process out of
		 * the deferred band with its state intact. So our request below is no-op.
		 * But we do it here anyways for coverage.
		 *
		 * memorystatus_update_idle_priority_locked()
		 * single-mindedly treats a dirty process as "cannot be in the aging band".
		 */

		if (!defer_now && already_deferred) {
			FUNC3(p, TRUE);
			reschedule = TRUE;
		} else {

			boolean_t reset_state = (jetsam_aging_policy != kJetsamAgingPolicyLegacy) ? TRUE : FALSE;

			FUNC3(p, reset_state);
			reschedule = TRUE;
		}
	}

	FUNC6(p);
	
	if (reschedule) {
		FUNC4();
	}
		
	ret = 0;
	
exit:		
	FUNC9();
	
	return ret;
}