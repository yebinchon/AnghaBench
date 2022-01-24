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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  snapshot_size ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  os_reason_t ;
typedef  int /*<<< orphan*/  memorystatus_jetsam_snapshot_t ;
typedef  int /*<<< orphan*/  memorystatus_jetsam_snapshot_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ notification_time; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  kMemorystatusSnapshotNote ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* memorystatus_jetsam_snapshot ; 
 int memorystatus_jetsam_snapshot_count ; 
 scalar_t__ memorystatus_jetsam_snapshot_last_timestamp ; 
 scalar_t__ memorystatus_jetsam_snapshot_timeout ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static boolean_t 
FUNC7(pid_t victim_pid, uint32_t cause, os_reason_t jetsam_reason) {
	boolean_t res;

	uint32_t errors = 0;

	if (victim_pid == -1) {
		/* No pid, so kill first process */
		res = FUNC3(TRUE, TRUE, cause, jetsam_reason, NULL, &errors);
	} else {
		res = FUNC2(victim_pid, cause, jetsam_reason);
	}
	
	if (errors) {
		FUNC1();
	}

	if (res == TRUE) {
		/* Fire off snapshot notification */
		FUNC5();
		size_t snapshot_size = sizeof(memorystatus_jetsam_snapshot_t) + 
			sizeof(memorystatus_jetsam_snapshot_entry_t) * memorystatus_jetsam_snapshot_count;
		uint64_t timestamp_now = FUNC0();
		memorystatus_jetsam_snapshot->notification_time = timestamp_now;
		if (memorystatus_jetsam_snapshot_count > 0 && (memorystatus_jetsam_snapshot_last_timestamp == 0 ||
				timestamp_now > memorystatus_jetsam_snapshot_last_timestamp + memorystatus_jetsam_snapshot_timeout)) {
			FUNC6();
			int ret = FUNC4(kMemorystatusSnapshotNote, &snapshot_size, sizeof(snapshot_size));
			if (!ret) {
				FUNC5();
				memorystatus_jetsam_snapshot_last_timestamp = timestamp_now;
				FUNC6();
			}
		} else {
			FUNC6();
		}
	}

	return res;
}