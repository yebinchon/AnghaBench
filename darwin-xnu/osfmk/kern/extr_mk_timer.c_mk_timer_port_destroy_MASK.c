#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mk_timer_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_11__ {scalar_t__ ip_kobject; } ;
struct TYPE_10__ {scalar_t__ active; int /*<<< orphan*/  lock; int /*<<< orphan*/  is_dead; int /*<<< orphan*/  is_armed; int /*<<< orphan*/  call_entry; TYPE_2__* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 scalar_t__ IKOT_TIMER ; 
 int /*<<< orphan*/  IKO_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  mk_timer_zone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC10(
	ipc_port_t			port)
{
	mk_timer_t			timer = NULL;

	FUNC2(port);
	if (FUNC1(port) == IKOT_TIMER) {
		timer = (mk_timer_t)port->ip_kobject;
		FUNC0(timer != NULL);
		FUNC4(port, IKO_NULL, IKOT_NONE);
		FUNC6(&timer->lock);
		FUNC0(timer->port == port);
	}
	FUNC3(port);

	if (timer != NULL) {
		if (FUNC8(&timer->call_entry))
			timer->active--;
		timer->is_armed = FALSE;

		timer->is_dead = TRUE;
		if (timer->active == 0) {
			FUNC7(&timer->lock);
			FUNC9(mk_timer_zone, timer);

			FUNC5(port);
			return;
		}

		FUNC7(&timer->lock);
	}
}