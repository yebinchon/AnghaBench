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
typedef  unsigned long long uint64_t ;
typedef  size_t uint32_t ;
typedef  TYPE_1__* proc_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  os_reason_t ;
typedef  int clock_usec_t ;
typedef  scalar_t__ clock_sec_t ;
typedef  int boolean_t ;
struct TYPE_6__ {int p_pid; size_t p_memstat_effectivepriority; char* p_name; int p_memstat_state; int /*<<< orphan*/  task; scalar_t__ p_memstat_memlimit; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 size_t JETSAM_PRIORITY_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  OS_LOG_DEFAULT ; 
 int P_MEMSTAT_DIAG_SUSPENDED ; 
 int P_MEMSTAT_FOREGROUND ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,scalar_t__*,int*) ; 
 unsigned long long footprint_in_bytes ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int jetsam_diagnostic_suspended_one_active_proc ; 
 size_t kMemorystatusInvalid ; 
 size_t kMemorystatusKilledHiwat ; 
 size_t kMemorystatusKilledVnodes ; 
 size_t kMemorystatusKilledZoneMapExhaustion ; 
 int kPolicyDiagnoseActive ; 
 int kPolicyDiagnoseFirst ; 
 unsigned long long FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ memorystatus_available_pages ; 
 int FUNC5 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int memorystatus_jetsam_policy ; 
 int /*<<< orphan*/ * memorystatus_kill_cause_name ; 
 int /*<<< orphan*/  memorystatus_purge_before_jetsam_success ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long,size_t,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC16(proc_t p, uint32_t cause, os_reason_t jetsam_reason, boolean_t *killed)
{
	pid_t aPid = 0;
	uint32_t aPid_ep = 0;

	uint64_t	killtime = 0;
        clock_sec_t     tv_sec;
        clock_usec_t    tv_usec;
        uint32_t        tv_msec;
	boolean_t	retval = FALSE;
	uint64_t	num_pages_purged = 0;

	aPid = p->p_pid;
	aPid_ep = p->p_memstat_effectivepriority;

	if (cause != kMemorystatusKilledVnodes && cause != kMemorystatusKilledZoneMapExhaustion) {
		/*
		 * Genuine memory pressure and not other (vnode/zone) resource exhaustion.
		 */
		boolean_t success = FALSE;

		FUNC7(p, cause);
		num_pages_purged = FUNC15(p->task);

		if (num_pages_purged) {
			/*
			 * We actually purged something and so let's
			 * check if we need to continue with the kill.
			 */
			if (cause == kMemorystatusKilledHiwat) {
				uint64_t footprint_in_bytes = FUNC2(p->task);
				uint64_t memlimit_in_bytes  = (((uint64_t)p->p_memstat_memlimit) * 1024ULL * 1024ULL);	/* convert MB to bytes */
				success = (footprint_in_bytes <= memlimit_in_bytes);
			} else {
				success = (FUNC4() == FALSE);
			}

			if (success) {

				memorystatus_purge_before_jetsam_success++;

				FUNC8(OS_LOG_DEFAULT, "memorystatus: purged %llu pages from pid %d [%s] and avoided %s\n",
				num_pages_purged, aPid, (*p->p_name ? p->p_name : "unknown"),  memorystatus_kill_cause_name[cause]);

				*killed = FALSE;

				return TRUE;
			}
		}
	}

#if CONFIG_JETSAM && (DEVELOPMENT || DEBUG)
	MEMORYSTATUS_DEBUG(1, "jetsam: %s pid %d [%s] - %lld Mb > 1 (%d Mb)\n",
			   (memorystatus_jetsam_policy & kPolicyDiagnoseActive) ? "suspending": "killing",
			   aPid, (*p->p_name ? p->p_name : "unknown"),
			   (footprint_in_bytes / (1024ULL * 1024ULL)), 	/* converted bytes to MB */
			   p->p_memstat_memlimit);
#endif /* CONFIG_JETSAM && (DEVELOPMENT || DEBUG) */

	killtime = FUNC3();
	FUNC1(killtime, &tv_sec, &tv_usec);
	tv_msec = tv_usec / 1000;

#if CONFIG_JETSAM && (DEVELOPMENT || DEBUG)
	if (memorystatus_jetsam_policy & kPolicyDiagnoseActive) {
		if (cause == kMemorystatusKilledHiwat) {
			MEMORYSTATUS_DEBUG(1, "jetsam: suspending pid %d [%s] for diagnosis - memorystatus_available_pages: %d\n",
				aPid, (*p->p_name ? p->p_name: "(unknown)"), memorystatus_available_pages);
		} else {
			int activeProcess = p->p_memstat_state & P_MEMSTAT_FOREGROUND;
			if (activeProcess) {
				MEMORYSTATUS_DEBUG(1, "jetsam: suspending pid %d [%s] (active) for diagnosis - memorystatus_available_pages: %d\n",
					aPid, (*p->p_name ? p->p_name: "(unknown)"), memorystatus_available_pages);

					if (memorystatus_jetsam_policy & kPolicyDiagnoseFirst) {
						jetsam_diagnostic_suspended_one_active_proc = 1;
						printf("jetsam: returning after suspending first active proc - %d\n", aPid);
					}
			}
		}

		proc_list_lock();
		/* This diagnostic code is going away soon. Ignore the kMemorystatusInvalid cause here. */
		memorystatus_update_jetsam_snapshot_entry_locked(p, kMemorystatusInvalid, killtime);
		proc_list_unlock();

		p->p_memstat_state |= P_MEMSTAT_DIAG_SUSPENDED;

		if (p) {
			task_suspend(p->task);
			*killed = TRUE;
		}
	} else
#endif /* CONFIG_JETSAM && (DEVELOPMENT || DEBUG) */
	{
		FUNC11();
		FUNC6(p, cause, killtime);
		FUNC12();

		char kill_reason_string[128];

		if (cause == kMemorystatusKilledHiwat) {
			FUNC13(kill_reason_string, "killing_highwater_process", 128);
		} else {
			if (aPid_ep == JETSAM_PRIORITY_IDLE) {
				FUNC13(kill_reason_string, "killing_idle_process", 128);
			} else {
				FUNC13(kill_reason_string, "killing_top_process", 128);
			}
		}

		FUNC8(OS_LOG_DEFAULT, "%lu.%03d memorystatus: %s pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\n",
		       (unsigned long)tv_sec, tv_msec, kill_reason_string,
		       aPid, (*p->p_name ? p->p_name : "unknown"),
		       memorystatus_kill_cause_name[cause], aPid_ep, (uint64_t)memorystatus_available_pages);

		/*
		 * memorystatus_do_kill drops a reference, so take another one so we can
		 * continue to use this exit reason even after memorystatus_do_kill()
		 * returns
		 */
		FUNC9(jetsam_reason);

		retval = FUNC5(p, cause, jetsam_reason);

		*killed = retval;
	}

	return retval;
}