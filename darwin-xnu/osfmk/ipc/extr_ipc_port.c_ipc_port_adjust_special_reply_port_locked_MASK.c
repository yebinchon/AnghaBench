#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  struct turnstile* turnstile_inheritor_t ;
struct turnstile {int dummy; } ;
struct knote {int dummy; } ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ ip_specialreply; int ip_sync_link_state; int /*<<< orphan*/  ip_messages; struct turnstile* ip_sync_inheritor_ts; struct knote* ip_sync_inheritor_knote; struct TYPE_12__* ip_sync_inheritor_port; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE ; 
 int IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY ; 
 int IPC_PORT_ADJUST_SR_ENABLE_EVENT ; 
 int IPC_PORT_ADJUST_SR_LINK_WORKLOOP ; 
 int IPC_PORT_ADJUST_SR_RECEIVED_MSG ; 
 void* IPC_PORT_NULL ; 
 scalar_t__ FUNC0 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_PORT_SEND_ONCE ; 
 int PORT_SYNC_LINK_ANY ; 
#define  PORT_SYNC_LINK_NO_LINKAGE 131 
#define  PORT_SYNC_LINK_PORT 130 
#define  PORT_SYNC_LINK_WORKLOOP_KNOTE 129 
#define  PORT_SYNC_LINK_WORKLOOP_STASH 128 
 int TURNSTILE_IMMEDIATE_UPDATE ; 
 struct turnstile* TURNSTILE_INHERITOR_NULL ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct turnstile* FUNC2 (struct knote*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct turnstile* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC16 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC17 (struct turnstile*,struct turnstile*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct turnstile*,int /*<<< orphan*/ ) ; 

void
FUNC19(
	ipc_port_t special_reply_port,
	struct knote *kn,
	uint8_t flags,
	boolean_t get_turnstile)
{
	ipc_port_t dest_port = IPC_PORT_NULL;
	int sync_link_state = PORT_SYNC_LINK_NO_LINKAGE;
	turnstile_inheritor_t inheritor = TURNSTILE_INHERITOR_NULL;
	struct turnstile *dest_ts = TURNSTILE_NULL, *ts = TURNSTILE_NULL;

	FUNC3(&special_reply_port->ip_messages);

	if (flags & IPC_PORT_ADJUST_SR_RECEIVED_MSG) {
		FUNC11(special_reply_port);
	}

	/* Check if the special reply port is marked non-special */
	if (special_reply_port->ip_specialreply == 0 ||
			special_reply_port->ip_sync_link_state == PORT_SYNC_LINK_ANY) {
		if (get_turnstile) {
			FUNC14((uintptr_t)special_reply_port,
				FUNC9(special_reply_port),
			NULL);
		}
		FUNC4(&special_reply_port->ip_messages);
		FUNC6(special_reply_port);
		if (get_turnstile) {
			FUNC13();
		}
		return;
	}

	/* Clear thread's special reply port and clear linkage */
	if (flags & IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY) {
		/* This option should only be specified by a non blocking thread */
		FUNC1(get_turnstile == FALSE);
		special_reply_port->ip_specialreply = 0;

		FUNC10(special_reply_port);

		/* Check if need to break linkage */
		if (special_reply_port->ip_sync_link_state == PORT_SYNC_LINK_NO_LINKAGE) {
			FUNC4(&special_reply_port->ip_messages);
			FUNC6(special_reply_port);
			return;
		}
	} else if (flags & IPC_PORT_ADJUST_SR_LINK_WORKLOOP) {
		if (special_reply_port->ip_sync_link_state == PORT_SYNC_LINK_ANY ||
		    special_reply_port->ip_sync_link_state == PORT_SYNC_LINK_PORT) {
			if (FUNC0(kn, MACH_MSG_TYPE_PORT_SEND_ONCE)) {
				inheritor = FUNC2(kn, special_reply_port,
						&sync_link_state);
			}
		}
	} else if (flags & IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE) {
		sync_link_state = PORT_SYNC_LINK_ANY;
	}

	switch (special_reply_port->ip_sync_link_state) {
	case PORT_SYNC_LINK_PORT:
		dest_port = special_reply_port->ip_sync_inheritor_port;
		special_reply_port->ip_sync_inheritor_port = IPC_PORT_NULL;
		break;
	case PORT_SYNC_LINK_WORKLOOP_KNOTE:
		special_reply_port->ip_sync_inheritor_knote = NULL;
		break;
	case PORT_SYNC_LINK_WORKLOOP_STASH:
		dest_ts = special_reply_port->ip_sync_inheritor_ts;
		special_reply_port->ip_sync_inheritor_ts = NULL;
		break;
	}

	special_reply_port->ip_sync_link_state = sync_link_state;

	switch (sync_link_state) {
	case PORT_SYNC_LINK_WORKLOOP_KNOTE:
		special_reply_port->ip_sync_inheritor_knote = kn;
		break;
	case PORT_SYNC_LINK_WORKLOOP_STASH:
		FUNC16(inheritor);
		special_reply_port->ip_sync_inheritor_ts = inheritor;
		break;
	case PORT_SYNC_LINK_NO_LINKAGE:
		if (flags & IPC_PORT_ADJUST_SR_ENABLE_EVENT) {
			FUNC12(special_reply_port);
		}
		break;
	}

	/* Get thread's turnstile donated to special reply port */
	if (get_turnstile) {
		FUNC14((uintptr_t)special_reply_port,
			FUNC9(special_reply_port),
			NULL);
	} else {
		ts = FUNC7(special_reply_port);
		if (ts) {
			FUNC16(ts);
			FUNC17(ts, inheritor,
					(TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE));
		}
	}

	FUNC4(&special_reply_port->ip_messages);
	FUNC6(special_reply_port);

	if (get_turnstile) {
		FUNC13();
	} else if (ts) {
		/* Call turnstile cleanup after dropping the interlock */
		FUNC18(ts, TURNSTILE_INTERLOCK_NOT_HELD);
		FUNC15(ts);
	}

	/* Release the ref on the dest port and it's turnstile */
	if (dest_port) {
		FUNC8(dest_port);
		/* release the reference on the dest port */
		FUNC5(dest_port);
	}

	if (dest_ts) {
		FUNC15(dest_ts);
	}
}