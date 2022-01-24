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
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  TYPE_2__* host_notify_t ;
struct TYPE_11__ {TYPE_1__* port; } ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_HOST_NOTIFY ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IKO_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  host_notify_lock ; 
 int /*<<< orphan*/  host_notify_zone ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC10(
	ipc_port_t			port)
{
	host_notify_t		entry;

	FUNC6(&host_notify_lock);

	FUNC2(port);
	if (FUNC1(port) == IKOT_HOST_NOTIFY) {
		entry = (host_notify_t)port->ip_kobject;
		FUNC0(entry != NULL);
		FUNC4(port, IKO_NULL, IKOT_NONE);
		FUNC3(port);

		FUNC0(entry->port == port);
		FUNC8((queue_entry_t)entry);
		FUNC7(&host_notify_lock);
		FUNC9(host_notify_zone, entry);

		FUNC5(port);
		return;
	}
	FUNC3(port);

	FUNC7(&host_notify_lock);
}