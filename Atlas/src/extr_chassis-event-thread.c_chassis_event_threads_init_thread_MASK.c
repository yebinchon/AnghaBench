#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int notify_receive_fd; int notify_send_fd; int /*<<< orphan*/  notify_fd_event; int /*<<< orphan*/  event_base; int /*<<< orphan*/ * chas; } ;
typedef  TYPE_1__ chassis_event_thread_t ;
typedef  int /*<<< orphan*/  chassis ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  chassis_event_handle ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int*) ; 

int FUNC7(chassis_event_thread_t *thread, chassis *chas) {
	thread->event_base = FUNC1();
	thread->chas = chas;

	int fds[2];
	if (FUNC6(fds)) {
		int err;
		err = errno;
		FUNC4("%s: evutil_socketpair() failed: %s (%d)", 
				G_STRLOC,
				FUNC5(err),
				err);
	}
	thread->notify_receive_fd = fds[0];
	thread->notify_send_fd = fds[1];

	FUNC3(&(thread->notify_fd_event), thread->notify_receive_fd, EV_READ | EV_PERSIST, chassis_event_handle, thread);
	FUNC2(thread->event_base, &(thread->notify_fd_event));
	FUNC0(&(thread->notify_fd_event), NULL);

	return 0;
}