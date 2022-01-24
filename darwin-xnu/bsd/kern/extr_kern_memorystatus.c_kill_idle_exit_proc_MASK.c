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
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ os_reason_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_10__ {scalar_t__ p_memstat_effectivepriority; int p_memstat_dirty; scalar_t__ p_memstat_idledeadline; int p_pid; char* p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ JETSAM_PRIORITY_IDLE ; 
 int /*<<< orphan*/  JETSAM_REASON_MEMORY_IDLE_EXIT ; 
 int /*<<< orphan*/  OS_REASON_JETSAM ; 
 scalar_t__ OS_REASON_NULL ; 
 TYPE_1__* PROC_NULL ; 
 int P_DIRTY_ALLOW_IDLE_EXIT ; 
 int P_DIRTY_IS_DIRTY ; 
 int P_DIRTY_TERMINATED ; 
 int /*<<< orphan*/  kMemorystatusKilledIdleExit ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (unsigned int*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (unsigned int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static boolean_t
FUNC11(void)
{
	proc_t p, victim_p = PROC_NULL;
	uint64_t current_time;
	boolean_t killed = FALSE;
	unsigned int i = 0;
	os_reason_t jetsam_reason = OS_REASON_NULL;

	/* Pick next idle exit victim. */
	current_time = FUNC0();
	
	jetsam_reason = FUNC4(OS_REASON_JETSAM, JETSAM_REASON_MEMORY_IDLE_EXIT);
	if (jetsam_reason == OS_REASON_NULL) {
		FUNC6("kill_idle_exit_proc: failed to allocate jetsam reason\n");
	}

	FUNC7();
	
	p = FUNC2(&i, FALSE);
	while (p) {
		/* No need to look beyond the idle band */
		if (p->p_memstat_effectivepriority != JETSAM_PRIORITY_IDLE) {
			break;
		}
		
		if ((p->p_memstat_dirty & (P_DIRTY_ALLOW_IDLE_EXIT|P_DIRTY_IS_DIRTY|P_DIRTY_TERMINATED)) == (P_DIRTY_ALLOW_IDLE_EXIT)) {				
			if (current_time >= p->p_memstat_idledeadline) {
				p->p_memstat_dirty |= P_DIRTY_TERMINATED;
				victim_p = FUNC9(p);
				break;
			}
		}
		
		p = FUNC3(&i, p, FALSE);
	}
	
	FUNC8();
	
	if (victim_p) {
		FUNC6("memorystatus: killing_idle_process pid %d [%s]\n", victim_p->p_pid, (*victim_p->p_name ? victim_p->p_name : "unknown"));
		killed = FUNC1(victim_p, kMemorystatusKilledIdleExit, jetsam_reason);
		FUNC10(victim_p);
	} else {
		FUNC5(jetsam_reason);
	}

	return killed;
}