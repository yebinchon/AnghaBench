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
typedef  int /*<<< orphan*/  uint64_t ;
struct kevent_qos_s {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 size_t ENV_QOS_AFTER_OVERRIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kevent_qos_s*) ; 
 int /*<<< orphan*/  T_END ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_expected_qos ; 
 int /*<<< orphan*/ * g_expected_qos_name ; 
 unsigned int FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void
FUNC8(uint64_t *workloop_id, struct kevent_qos_s **eventslist, int *events)
{
	unsigned override_priority;
	unsigned reenable_priority;

	FUNC3("Workloop handler workloop_cb_test_sync_send_and_enable called");

	FUNC1(*eventslist);

	if (FUNC7() != 0) {
		FUNC4("kevent_qos test requires root privileges to run.");
	}

	/* The effective Qos should be the one expected after override */
	FUNC0(g_expected_qos[ENV_QOS_AFTER_OVERRIDE],
			"dispatch_source event handler QoS should be %s", g_expected_qos_name[ENV_QOS_AFTER_OVERRIDE]);

	/* Snapshot the current override priority */
	override_priority = FUNC6();

	/* Enable the knote */
	struct kevent_qos_s *kev = *eventslist;
	FUNC5(workloop_id, kev->ident);

	/*
	 * Check if the override has been dropped, check for priority instead of qos since
	 * there will be async qos push.
	 */
	reenable_priority = FUNC6();
	FUNC2(reenable_priority, override_priority,
		"thread's current override priority %d should be less than override priority prior to enabling knote %d",
		reenable_priority, override_priority);

	*events = 0;
	T_END;
}