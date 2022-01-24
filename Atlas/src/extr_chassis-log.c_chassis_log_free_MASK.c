#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* log_filename; int /*<<< orphan*/  last_msg; int /*<<< orphan*/  log_ts_str; scalar_t__ event_source_handle; } ;
typedef  TYPE_1__ chassis_log ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(chassis_log *log) {
	if (!log) return;

	FUNC2(log);
#ifdef _WIN32
	if (log->event_source_handle) {
		if (!DeregisterEventSource(log->event_source_handle)) {
			int err = GetLastError();
			g_critical("unhandled error-code (%d) for DeregisterEventSource()", err);
		}
	}
#endif
	FUNC5(log->log_ts_str, TRUE);
	FUNC5(log->last_msg, TRUE);

	if (log->log_filename) FUNC4(log->log_filename);

	FUNC4(log);
}