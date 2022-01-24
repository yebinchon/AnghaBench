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
typedef  int /*<<< orphan*/  network_mysqld_con ;
struct TYPE_4__ {int notify_receive_fd; int notify_send_fd; int /*<<< orphan*/  event_queue; scalar_t__ event_base; int /*<<< orphan*/ * thr; int /*<<< orphan*/  notify_fd_event; } ;
typedef  TYPE_1__ chassis_event_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(chassis_event_thread_t *thread) {
	if (!thread) return;

	if (thread->thr) FUNC6(thread->thr);

	if (thread->notify_receive_fd != -1) {
		FUNC2(&(thread->notify_fd_event));
		FUNC0(thread->notify_receive_fd);
	}
	if (thread->notify_send_fd != -1) {
		FUNC0(thread->notify_send_fd);
	}

	/* we don't want to free the global event-base */
	if (thread->thr != NULL && thread->event_base) FUNC1(thread->event_base);

	network_mysqld_con* con;
	while ((con = FUNC3(thread->event_queue))) {
		FUNC7(con);
	}
	FUNC4(thread->event_queue);

	FUNC5(thread);
}