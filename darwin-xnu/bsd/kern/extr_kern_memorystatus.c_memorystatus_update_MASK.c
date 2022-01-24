#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* proc_t ;
typedef  int int32_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {char* p_name; int p_pid; int p_memstat_state; int p_listflag; int p_memstat_requestedpriority; int p_memstat_dirty; scalar_t__ p_memstat_memlimit; int /*<<< orphan*/  task; int /*<<< orphan*/  p_memstat_userdata; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_MEMSTAT_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  DBG_BSD_MEMSTAT ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EALREADY ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FALSE ; 
 int JETSAM_PRIORITY_DEFAULT ; 
 int JETSAM_PRIORITY_IDLE ; 
 int JETSAM_PRIORITY_IDLE_HEAD ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int MEMSTAT_BUCKET_COUNT ; 
 int P_DIRTY ; 
 int P_LIST_EXITED ; 
 int P_MEMSTAT_FATAL_MEMLIMIT ; 
 int P_MEMSTAT_INTERNAL ; 
 int P_MEMSTAT_PRIORITYUPDATED ; 
 int P_MEMSTAT_TERMINATED ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int applications_aging_band ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ jetsam_aging_policy ; 
 scalar_t__ kJetsamAgingPolicyLegacy ; 
 scalar_t__ memorystatus_highwater_enabled ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int system_procs_aging_band ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

int
FUNC15(proc_t p, int priority, uint64_t user_data, boolean_t effective, boolean_t update_memlimit,
		    int32_t memlimit_active,   boolean_t memlimit_active_is_fatal,
                    int32_t memlimit_inactive, boolean_t memlimit_inactive_is_fatal)
{
	int ret;
	boolean_t head_insert = false;

	FUNC4(1, "memorystatus_update: changing (%s) pid %d: priority %d, user_data 0x%llx\n", (*p->p_name ? p->p_name : "unknown"), p->p_pid, priority, user_data);

	FUNC3(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_UPDATE) | DBG_FUNC_START, p->p_pid, priority, user_data, effective, 0);
	
	if (priority == -1) {
		/* Use as shorthand for default priority */
		priority = JETSAM_PRIORITY_DEFAULT;
	} else if ((priority == system_procs_aging_band) || (priority == applications_aging_band)) {
		/* Both the aging bands are reserved for internal use; if requested, adjust to JETSAM_PRIORITY_IDLE. */
		priority = JETSAM_PRIORITY_IDLE;	        
	} else if (priority == JETSAM_PRIORITY_IDLE_HEAD) {
		/* JETSAM_PRIORITY_IDLE_HEAD inserts at the head of the idle queue */
		priority = JETSAM_PRIORITY_IDLE;
		head_insert = TRUE;
	} else if ((priority < 0) || (priority >= MEMSTAT_BUCKET_COUNT)) {
		/* Sanity check */
		ret = EINVAL;
		goto out;
	}

	FUNC12();
	
	FUNC7(!(p->p_memstat_state & P_MEMSTAT_INTERNAL));

	if (effective && (p->p_memstat_state & P_MEMSTAT_PRIORITYUPDATED)) {
		ret = EALREADY;
		FUNC13();
		FUNC4(1, "memorystatus_update: effective change specified for pid %d, but change already occurred.\n", p->p_pid);
		goto out;             
	}

	if ((p->p_memstat_state & P_MEMSTAT_TERMINATED) || ((p->p_listflag & P_LIST_EXITED) != 0)) {
		/*
		 * This could happen when a process calling posix_spawn() is exiting on the jetsam thread.
		 */
		ret = EBUSY;
		FUNC13();
		goto out;             
	}

	p->p_memstat_state |= P_MEMSTAT_PRIORITYUPDATED;
	p->p_memstat_userdata = user_data;
	p->p_memstat_requestedpriority = priority;

	if (update_memlimit) {
		boolean_t is_fatal;
		boolean_t use_active;

		/*
		 * Posix_spawn'd processes come through this path to instantiate ledger limits.
		 * Forked processes do not come through this path, so no ledger limits exist.
		 * (That's why forked processes can consume unlimited memory.)
		 */

		FUNC4(3, "memorystatus_update(enter): pid %d, priority %d, dirty=0x%x, Active(%dMB %s), Inactive(%dMB, %s)\n",
				   p->p_pid, priority, p->p_memstat_dirty,
				   memlimit_active,   (memlimit_active_is_fatal ? "F " : "NF"),
				   memlimit_inactive, (memlimit_inactive_is_fatal ? "F " : "NF"));

		if (memlimit_active <= 0) {
			/*
			 * This process will have a system_wide task limit when active.
			 * System_wide task limit is always fatal.
			 * It's quite common to see non-fatal flag passed in here.
			 * It's not an error, we just ignore it.
			 */

			/*
			 * For backward compatibility with some unexplained launchd behavior,
			 * we allow a zero sized limit.  But we still enforce system_wide limit
			 * when written to the ledgers.  
			 */

			if (memlimit_active < 0) {
				memlimit_active = -1;  /* enforces system_wide task limit */
			}
			memlimit_active_is_fatal = TRUE;
		}

		if (memlimit_inactive <= 0) {
			/*
			 * This process will have a system_wide task limit when inactive.
			 * System_wide task limit is always fatal.
			 */

			memlimit_inactive = -1;
			memlimit_inactive_is_fatal = TRUE;
		}

		/*
		 * Initialize the active limit variants for this process.
		 */
		FUNC5(p, memlimit_active, memlimit_active_is_fatal);

		/*
		 * Initialize the inactive limit variants for this process.
		 */
		FUNC6(p, memlimit_inactive, memlimit_inactive_is_fatal);

		/*
		 * Initialize the cached limits for target process.
		 * When the target process is dirty tracked, it's typically
		 * in a clean state.  Non dirty tracked processes are
		 * typically active (Foreground or above).
		 * But just in case, we don't make assumptions...
		 */

		if (FUNC11(p) == TRUE) {
			FUNC1(p, is_fatal);
			use_active = TRUE;
		} else {
			FUNC2(p, is_fatal);
			use_active = FALSE;
		}

		/*
		 * Enforce the cached limit by writing to the ledger.
		 */
		if (memorystatus_highwater_enabled) {
			/* apply now */
			FUNC14(p->task, ((p->p_memstat_memlimit > 0) ? p->p_memstat_memlimit : -1), NULL, use_active, is_fatal);

			FUNC4(3, "memorystatus_update: init: limit on pid %d (%dMB %s) targeting priority(%d) dirty?=0x%x %s\n",
					   p->p_pid, (p->p_memstat_memlimit > 0 ? p->p_memstat_memlimit : -1),
					   (p->p_memstat_state & P_MEMSTAT_FATAL_MEMLIMIT ? "F " : "NF"), priority, p->p_memstat_dirty,
					   (p->p_memstat_dirty ? ((p->p_memstat_dirty & P_DIRTY) ? "isdirty" : "isclean") : ""));
		}
	}

	/*
	 * We can't add to the aging bands buckets here.
	 * But, we could be removing it from those buckets.
	 * Check and take appropriate steps if so.
	 */
	
	if (FUNC8(p)) {
		
		FUNC9(p, TRUE);
		FUNC10(p, JETSAM_PRIORITY_IDLE, FALSE, TRUE);
	} else {
		if (jetsam_aging_policy == kJetsamAgingPolicyLegacy &&  priority == JETSAM_PRIORITY_IDLE) {
			/*
			 * Daemons with 'inactive' limits will go through the dirty tracking codepath.
			 * This path deals with apps that may have 'inactive' limits e.g. WebContent processes.
			 * If this is the legacy aging policy we explicitly need to apply those limits. If it
			 * is any other aging policy, then we don't need to worry because all processes
			 * will go through the aging bands and then the demotion thread will take care to
			 * move them into the IDLE band and apply the required limits.
			 */
			FUNC10(p, priority, head_insert, TRUE);
		}
	}

	FUNC10(p, priority, head_insert, FALSE);

	FUNC13();
	ret = 0;

out:
	FUNC3(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_UPDATE) | DBG_FUNC_END, ret, 0, 0, 0, 0);

	return ret;
}