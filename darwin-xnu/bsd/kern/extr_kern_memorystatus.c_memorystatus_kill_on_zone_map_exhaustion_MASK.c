#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int pid_t ;
typedef  scalar_t__ os_reason_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JETSAM_REASON_ZONE_MAP_EXHAUSTION ; 
 int /*<<< orphan*/  OS_REASON_JETSAM ; 
 scalar_t__ OS_REASON_NULL ; 
 int /*<<< orphan*/  kMemorystatusKilledZoneMapExhaustion ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

boolean_t
FUNC4(pid_t pid) {
	boolean_t res = FALSE;
	if (pid == -1) {
		res = FUNC0(-1, kMemorystatusKilledZoneMapExhaustion);
	} else {
		os_reason_t jetsam_reason = FUNC2(OS_REASON_JETSAM, JETSAM_REASON_ZONE_MAP_EXHAUSTION);
		if (jetsam_reason == OS_REASON_NULL) {
			FUNC3("memorystatus_kill_on_zone_map_exhaustion: failed to allocate jetsam reason\n");
		}

		res = FUNC1(pid, kMemorystatusKilledZoneMapExhaustion, jetsam_reason);
	}
	return res;
}