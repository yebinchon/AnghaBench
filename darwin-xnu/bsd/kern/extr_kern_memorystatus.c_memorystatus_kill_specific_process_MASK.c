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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  os_reason_t ;
typedef  int clock_usec_t ;
typedef  scalar_t__ clock_sec_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {char* p_name; int /*<<< orphan*/  p_memstat_effectivepriority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OS_LOG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ memorystatus_available_pages ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ memorystatus_jetsam_snapshot_count ; 
 int /*<<< orphan*/ * memorystatus_kill_cause_name ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long,size_t,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static boolean_t 
FUNC11(pid_t victim_pid, uint32_t cause, os_reason_t jetsam_reason) {
	boolean_t killed;
	proc_t p;
	uint64_t killtime = 0;
        clock_sec_t     tv_sec;
        clock_usec_t    tv_usec;
        uint32_t        tv_msec;

	/* TODO - add a victim queue and push this into the main jetsam thread */

	p = FUNC7(victim_pid);
	if (!p) {
		FUNC6(jetsam_reason);
		return FALSE;
	}

	FUNC8();

	if (memorystatus_jetsam_snapshot_count == 0) {
		FUNC3(NULL,0);
	}

	killtime = FUNC1();
        FUNC0(killtime, &tv_sec, &tv_usec);
        tv_msec = tv_usec / 1000;

	FUNC4(p, cause, killtime);

	FUNC9();

	FUNC5(OS_LOG_DEFAULT, "%lu.%03d memorystatus: killing_specific_process pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\n",
	       (unsigned long)tv_sec, tv_msec, victim_pid, (*p->p_name ? p->p_name : "unknown"),
	       memorystatus_kill_cause_name[cause], p->p_memstat_effectivepriority, (uint64_t)memorystatus_available_pages);
	
	killed = FUNC2(p, cause, jetsam_reason);
	FUNC10(p);
	
	return killed;
}