#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ ip_sync_link_state; scalar_t__ ip_sync_inheritor_port; int /*<<< orphan*/  ip_messages; int /*<<< orphan*/  ip_specialreply; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ IPC_PORT_NULL ; 
 scalar_t__ PORT_SYNC_LINK_ANY ; 
 scalar_t__ PORT_SYNC_LINK_PORT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(
	ipc_port_t special_reply_port,
	ipc_port_t dest_port)
{
	boolean_t drop_turnstile_ref = FALSE;

	/* Check if dest_port needs a turnstile */
	FUNC6(dest_port);

	/* Lock the special reply port and establish the linkage */
	FUNC2(special_reply_port);
	FUNC0(&special_reply_port->ip_messages);

	/* Check if we need to drop the acquired turnstile ref on dest port */
	if (!special_reply_port->ip_specialreply ||
	    special_reply_port->ip_sync_link_state != PORT_SYNC_LINK_ANY ||
	    special_reply_port->ip_sync_inheritor_port != IPC_PORT_NULL) {
		drop_turnstile_ref = TRUE;
	} else {
		/* take a reference on dest_port */
		FUNC3(dest_port);
		special_reply_port->ip_sync_inheritor_port = dest_port;
		special_reply_port->ip_sync_link_state = PORT_SYNC_LINK_PORT;
	}

	FUNC1(&special_reply_port->ip_messages);
	FUNC4(special_reply_port);

	if (drop_turnstile_ref) {
		FUNC5(dest_port);
	}

	return;
}