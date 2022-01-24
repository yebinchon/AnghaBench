#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_10__ {scalar_t__ count; int /*<<< orphan*/  list; } ;
typedef  TYPE_2__ memstat_bucket_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {int p_memstat_state; size_t p_memstat_effectivepriority; scalar_t__ p_memstat_idle_start; scalar_t__ p_memstat_freeze_sharedanon_pages; scalar_t__ p_memstat_idle_delta; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int ESRCH ; 
 scalar_t__ FALSE ; 
 size_t JETSAM_PRIORITY_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int P_MEMSTAT_FROZEN ; 
 int P_MEMSTAT_INTERNAL ; 
 int P_MEMSTAT_REFREEZE_ELIGIBLE ; 
 int P_MEMSTAT_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 size_t applications_aging_band ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  memorystatus_frozen_count ; 
 int /*<<< orphan*/  memorystatus_frozen_shared_mb ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  memorystatus_list_count ; 
 int /*<<< orphan*/  memorystatus_refreeze_eligible_count ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ memorystatus_scheduled_idle_demotions_apps ; 
 scalar_t__ memorystatus_scheduled_idle_demotions_sysprocs ; 
 int /*<<< orphan*/  memorystatus_suspended_count ; 
 TYPE_2__* memstat_bucket ; 
 int /*<<< orphan*/  p_memstat_list ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 size_t system_procs_aging_band ; 

int
FUNC11(proc_t p, boolean_t locked)
{
	int ret;
	memstat_bucket_t *bucket;
	boolean_t	reschedule = FALSE;

	FUNC0(1, "memorystatus_list_remove: removing pid %d\n", p->p_pid);

   	if (!locked) {
   	   	FUNC9();
   	}

	FUNC2(!(p->p_memstat_state & P_MEMSTAT_INTERNAL));
	
	bucket = &memstat_bucket[p->p_memstat_effectivepriority];

	if (FUNC4(p) && system_procs_aging_band && (p->p_memstat_effectivepriority == system_procs_aging_band)) {

		FUNC2(bucket->count == memorystatus_scheduled_idle_demotions_sysprocs);
		reschedule = TRUE;

	} else if (FUNC3(p) && applications_aging_band && (p->p_memstat_effectivepriority == applications_aging_band)) {

		FUNC2(bucket->count == memorystatus_scheduled_idle_demotions_apps);
		reschedule = TRUE;
	}

	/*
	 * Record idle delta
	 */

	if (p->p_memstat_effectivepriority == JETSAM_PRIORITY_IDLE) {
		uint64_t now = FUNC5();
		if (now > p->p_memstat_idle_start) {
			p->p_memstat_idle_delta = now - p->p_memstat_idle_start;
		}
	}

	FUNC1(&bucket->list, p, p_memstat_list);
	bucket->count--;

	memorystatus_list_count--;

	/* If awaiting demotion to the idle band, clean up */
	if (reschedule) {
		FUNC7(p, TRUE);
 		FUNC8();
	}

	FUNC6();

#if CONFIG_FREEZE    
	if (p->p_memstat_state & (P_MEMSTAT_FROZEN)) {

		if (p->p_memstat_state & P_MEMSTAT_REFREEZE_ELIGIBLE) {
			p->p_memstat_state &= ~P_MEMSTAT_REFREEZE_ELIGIBLE;
			memorystatus_refreeze_eligible_count--;
		}

		memorystatus_frozen_count--;
		memorystatus_frozen_shared_mb -= p->p_memstat_freeze_sharedanon_pages;
		p->p_memstat_freeze_sharedanon_pages = 0;
	}

	if (p->p_memstat_state & P_MEMSTAT_SUSPENDED) {
		memorystatus_suspended_count--;
	}
#endif

   	if (!locked) {
   	   	FUNC10();
   	}

	if (p) {
		ret = 0; 
	} else {
		ret = ESRCH;
	}

	return ret;
}