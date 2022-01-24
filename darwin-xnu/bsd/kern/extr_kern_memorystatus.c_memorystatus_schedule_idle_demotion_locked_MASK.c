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
typedef  int uint64_t ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {int p_memstat_state; int p_memstat_dirty; int p_memstat_idledeadline; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int P_DIRTY_AGING_IN_PROGRESS ; 
 int P_DIRTY_IDLE_EXIT_ENABLED ; 
 int P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND ; 
 scalar_t__ TRUE ; 
 scalar_t__ applications_aging_band ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ jetsam_aging_policy ; 
 scalar_t__ kJetsamAgingPolicyLegacy ; 
 scalar_t__ kJetsamAgingPolicyNone ; 
 int FUNC5 () ; 
 int memorystatus_apps_idle_delay_time ; 
 scalar_t__ memorystatus_scheduled_idle_demotions_apps ; 
 scalar_t__ memorystatus_scheduled_idle_demotions_sysprocs ; 
 int memorystatus_sysprocs_idle_delay_time ; 
 scalar_t__ system_procs_aging_band ; 

__attribute__((used)) static void
FUNC6(proc_t p, boolean_t set_state) 
{	
	boolean_t present_in_sysprocs_aging_bucket = FALSE;
	boolean_t present_in_apps_aging_bucket = FALSE;
	uint64_t  idle_delay_time = 0;

	if (jetsam_aging_policy == kJetsamAgingPolicyNone) {
		return;
	}

	if (p->p_memstat_state & P_MEMSTAT_USE_ELEVATED_INACTIVE_BAND) {
		/*
		 * This process isn't going to be making the trip to the lower bands.
		 */
		return;
	}

	if (FUNC3(p)){
		
		if (jetsam_aging_policy != kJetsamAgingPolicyLegacy) {
			FUNC1((p->p_memstat_dirty & P_DIRTY_AGING_IN_PROGRESS) != P_DIRTY_AGING_IN_PROGRESS);
		}

		if (FUNC4(p) && system_procs_aging_band) {
			present_in_sysprocs_aging_bucket = TRUE;

		} else if (FUNC2(p) && applications_aging_band) {
			present_in_apps_aging_bucket = TRUE;
		}
	}

	FUNC1(!present_in_sysprocs_aging_bucket);
	FUNC1(!present_in_apps_aging_bucket);

	FUNC0(1, "memorystatus_schedule_idle_demotion_locked: scheduling demotion to idle band for pid %d (dirty:0x%x, set_state %d, demotions %d).\n", 
	    p->p_pid, p->p_memstat_dirty, set_state, (memorystatus_scheduled_idle_demotions_sysprocs + memorystatus_scheduled_idle_demotions_apps));

	if(FUNC4(p)) {
		FUNC1((p->p_memstat_dirty & P_DIRTY_IDLE_EXIT_ENABLED) == P_DIRTY_IDLE_EXIT_ENABLED);
	}

	idle_delay_time = (FUNC4(p)) ? memorystatus_sysprocs_idle_delay_time : memorystatus_apps_idle_delay_time;

	if (set_state) {
		p->p_memstat_dirty |= P_DIRTY_AGING_IN_PROGRESS;
		p->p_memstat_idledeadline = FUNC5() + idle_delay_time;
	}
	
	FUNC1(p->p_memstat_idledeadline);
	
 	if (FUNC4(p) && present_in_sysprocs_aging_bucket == FALSE) {
		memorystatus_scheduled_idle_demotions_sysprocs++;

	} else if (FUNC2(p) && present_in_apps_aging_bucket == FALSE) {
		memorystatus_scheduled_idle_demotions_apps++;
	}
}