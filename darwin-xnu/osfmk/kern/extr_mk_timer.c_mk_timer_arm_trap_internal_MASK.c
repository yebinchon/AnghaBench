#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* mk_timer_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_7__ {scalar_t__ ip_kobject; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; int /*<<< orphan*/  call_entry; int /*<<< orphan*/  is_armed; int /*<<< orphan*/  is_dead; TYPE_2__* port; } ;

/* Variables and functions */
 scalar_t__ IKOT_TIMER ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 int MK_TIMER_CRITICAL ; 
 int /*<<< orphan*/  THREAD_CALL_DELAY_LEEWAY ; 
 int /*<<< orphan*/  THREAD_CALL_DELAY_USER_CRITICAL ; 
 int /*<<< orphan*/  THREAD_CALL_DELAY_USER_NORMAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC10(mach_port_name_t name, uint64_t expire_time, uint64_t mk_leeway, uint64_t mk_timer_flags) {
	mk_timer_t			timer;
	ipc_space_t			myspace = FUNC1();
	ipc_port_t			port;
	kern_return_t			result;

	result = FUNC4(myspace, name, &port);
	if (result != KERN_SUCCESS)
		return (result);

	if (FUNC2(port) == IKOT_TIMER) {
		timer = (mk_timer_t)port->ip_kobject;
		FUNC0(timer != NULL);

		FUNC6(&timer->lock);
		FUNC0(timer->port == port);
		FUNC3(port);

		if (!timer->is_dead) {
			timer->is_armed = TRUE;

			if (expire_time > FUNC5()) {
				uint32_t tcflags = THREAD_CALL_DELAY_USER_NORMAL;

				if (mk_timer_flags & MK_TIMER_CRITICAL) {
					tcflags = THREAD_CALL_DELAY_USER_CRITICAL;
				}

				if (mk_leeway != 0) {
					tcflags |= THREAD_CALL_DELAY_LEEWAY;
				}

				if (!FUNC9(
					&timer->call_entry, NULL,
					expire_time, mk_leeway, tcflags)) {

					timer->active++;
				}
			} else {
				if (!FUNC8(&timer->call_entry, NULL))
					timer->active++;
			}
		}

		FUNC7(&timer->lock);
	} else {
		FUNC3(port);
		result = KERN_INVALID_ARGUMENT;
	}
	return (result);
}