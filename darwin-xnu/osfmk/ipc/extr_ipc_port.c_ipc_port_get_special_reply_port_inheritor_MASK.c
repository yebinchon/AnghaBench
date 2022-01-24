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
typedef  int /*<<< orphan*/  turnstile_inheritor_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_4__ {int ip_sync_link_state; int /*<<< orphan*/  ip_sync_inheritor_ts; int /*<<< orphan*/ * ip_sync_inheritor_port; int /*<<< orphan*/  ip_messages; int /*<<< orphan*/  ip_specialreply; } ;

/* Variables and functions */
#define  PORT_SYNC_LINK_PORT 130 
#define  PORT_SYNC_LINK_WORKLOOP_KNOTE 129 
#define  PORT_SYNC_LINK_WORKLOOP_STASH 128 
 int /*<<< orphan*/  TURNSTILE_INHERITOR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

turnstile_inheritor_t
FUNC4(
	ipc_port_t port)
{
	FUNC0(port->ip_specialreply);
	FUNC2(&port->ip_messages);

	switch (port->ip_sync_link_state) {
	case PORT_SYNC_LINK_PORT:
		if (port->ip_sync_inheritor_port != NULL) {
			return FUNC3(port->ip_sync_inheritor_port);
		}
		break;
	case PORT_SYNC_LINK_WORKLOOP_KNOTE:
		return FUNC1(port);
	case PORT_SYNC_LINK_WORKLOOP_STASH:
		return port->ip_sync_inheritor_ts;
	}
	return TURNSTILE_INHERITOR_NULL;
}