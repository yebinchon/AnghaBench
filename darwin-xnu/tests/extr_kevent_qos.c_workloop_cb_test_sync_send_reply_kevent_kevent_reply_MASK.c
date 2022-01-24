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
struct kevent_qos_s {int filter; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  mach_port_t ;

/* Variables and functions */
 int EVFILT_MACHPORT ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kevent_qos_s*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct kevent_qos_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int workloop_cb_test_sync_send_reply_kevent_kevent_reply_handler_called ; 

__attribute__((used)) static void
FUNC8(uint64_t *workloop_id, struct kevent_qos_s **eventslist, int *events)
{
	FUNC1("workloop handler workloop_cb_test_sync_send_reply_kevent_kevent_reply called");

	if (FUNC5() != 0) {
		FUNC2("kevent_qos test requires root privileges to run.");
	}

	T_QUIET; FUNC0(*events, 1, "events received");
	T_QUIET; FUNC0((*eventslist)->filter, EVFILT_MACHPORT, "received EVFILT_MACHPORT");

	struct kevent_qos_s *kev = *eventslist;
	mach_port_t reply_port = FUNC4(kev);

	if (workloop_cb_test_sync_send_reply_kevent_kevent_reply_handler_called == 0) {
		workloop_cb_test_sync_send_reply_kevent_kevent_reply_handler_called = 1;

		/* send reply */
		FUNC7(reply_port);

		FUNC6(kev, kev->ident);

		*events = 1;

	} else {

		/* Enable the knote */
		FUNC3(workloop_id, kev->ident);
		/* send reply */
		FUNC7(reply_port);

		*events = 0;
	}

	FUNC1("Handler returning \n");
}