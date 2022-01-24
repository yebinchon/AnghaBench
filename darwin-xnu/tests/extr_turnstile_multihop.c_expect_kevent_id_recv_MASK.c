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
struct kevent_qos_s {int flags; int fflags; int data; int /*<<< orphan*/  member_0; int /*<<< orphan*/  qos; int /*<<< orphan*/  filter; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  pthread_workqueue_function_workloop_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_MACHPORT ; 
 int EV_ADD ; 
 int EV_DISPATCH ; 
 int EV_UDATA_SPECIFIC ; 
 int EV_VANISHED ; 
 int KEVENT_FLAG_ERROR_EVENTS ; 
 int KEVENT_FLAG_WORKLOOP ; 
 int /*<<< orphan*/  MACH_MSG_TRAILER_FORMAT_0 ; 
 int MACH_RCV_LARGE ; 
 int MACH_RCV_LARGE_IDENTITY ; 
 int MACH_RCV_MSG ; 
 int /*<<< orphan*/  MACH_RCV_TRAILER_CTX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MACH_RCV_VOUCHER ; 
 int /*<<< orphan*/  QOS_CLASS_MAINTENANCE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_cb ; 
 int FUNC7 (int,struct kevent_qos_s*,int,struct kevent_qos_s*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  worker_cb ; 
 scalar_t__ workloop_cb_test_intransit ; 

__attribute__((used)) static void
FUNC8(mach_port_t port)
{
	int r;

	T_QUIET; FUNC4(FUNC6(
		worker_cb, event_cb,
		(pthread_workqueue_function_workloop_t)workloop_cb_test_intransit, 0, 0), NULL);

	struct kevent_qos_s kev[] = {{
		.ident = port,
		.filter = EVFILT_MACHPORT,
		.flags = EV_ADD | EV_UDATA_SPECIFIC | EV_DISPATCH | EV_VANISHED,
		.fflags = (MACH_RCV_MSG | MACH_RCV_LARGE | MACH_RCV_LARGE_IDENTITY |
				FUNC0(MACH_RCV_TRAILER_CTX) |
				FUNC1(MACH_MSG_TRAILER_FORMAT_0) |
				MACH_RCV_VOUCHER),
		.data = 1,
		.qos = (int32_t)FUNC5(QOS_CLASS_MAINTENANCE, 0, 0)
	}};

	struct kevent_qos_s kev_err[] = {{ 0 }};

	/* Setup workloop for mach msg rcv */
	r = FUNC7(25, kev, 1, kev_err, 1, NULL,
			NULL, KEVENT_FLAG_WORKLOOP | KEVENT_FLAG_ERROR_EVENTS);

	T_QUIET; FUNC3(r, "kevent_id");
	T_QUIET; FUNC2(r, 0, "no errors returned from kevent_id");
}