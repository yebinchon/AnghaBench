#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_MEMSTAT_FAST_JETSAM ; 
 int /*<<< orphan*/  DBG_BSD_MEMSTAT ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_SCHED ; 
 int /*<<< orphan*/  DBG_THROTTLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IO_THROTTLE_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_CPU_THROTTLE_DISABLE ; 
#define  SYS_OVERRIDE_CPU_THROTTLE 130 
#define  SYS_OVERRIDE_FAST_JETSAM 129 
#define  SYS_OVERRIDE_IO_THROTTLE 128 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(uint64_t flags, boolean_t enable_override)
{
	switch (flags) {
		case SYS_OVERRIDE_IO_THROTTLE:
			if (enable_override) {
				FUNC2(FUNC1(DBG_THROTTLE, IO_THROTTLE_DISABLE) | DBG_FUNC_START, 
					FUNC4()->p_pid, 0, 0, 0, 0);
			} else {
				FUNC2(FUNC1(DBG_THROTTLE, IO_THROTTLE_DISABLE) | DBG_FUNC_END, 
					FUNC4()->p_pid, 0, 0, 0, 0);
			}
			FUNC8(enable_override);
			break;

		case SYS_OVERRIDE_CPU_THROTTLE:
			if (enable_override) {
				FUNC2(FUNC3(DBG_MACH_SCHED, MACH_CPU_THROTTLE_DISABLE) | DBG_FUNC_START, 
					FUNC4()->p_pid, 0, 0, 0, 0);
			} else {
				FUNC2(FUNC3(DBG_MACH_SCHED, MACH_CPU_THROTTLE_DISABLE) | DBG_FUNC_END, 
					FUNC4()->p_pid, 0, 0, 0, 0);
			}
			FUNC7(enable_override);
			break;

		case SYS_OVERRIDE_FAST_JETSAM:
			if (enable_override) {
				FUNC2(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_FAST_JETSAM) | DBG_FUNC_START, 
					FUNC4()->p_pid, 0, 0, 0, 0);
			} else {
				FUNC2(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_FAST_JETSAM) | DBG_FUNC_END, 
					FUNC4()->p_pid, 0, 0, 0, 0);
			}
#if CONFIG_JETSAM
			memorystatus_fast_jetsam_override(enable_override);
#endif /* CONFIG_JETSAM */
			break;

		default:
			FUNC6("Unknown option to system_override_callouts(): %llu\n", flags);
	}
}