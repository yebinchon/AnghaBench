#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  event_source_handle; int /*<<< orphan*/  use_windows_applog; } ;
typedef  TYPE_1__ chassis_log ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(chassis_log *log, const char *app_name) {
	FUNC3(log != NULL, -1);

#if _WIN32
	log->use_windows_applog = TRUE;
	log->event_source_handle = RegisterEventSource(NULL, app_name);

	if (!log->event_source_handle) {
		int err = GetLastError();

		g_critical("%s: RegisterEventSource(NULL, %s) failed: %s (%d)",
				G_STRLOC,
				g_strerror(err),
				err);

		return -1;
	}

	return 0;
#else
	return -1;
#endif
}