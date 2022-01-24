#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct turnstile {scalar_t__ ts_port_ref; } ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_receiver_name; int /*<<< orphan*/  ip_messages; struct TYPE_8__* ip_destination; } ;

/* Variables and functions */
 TYPE_1__* IP_NULL ; 
 scalar_t__ MACH_PORT_NULL ; 
 int TURNSTILE_IMMEDIATE_UPDATE ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_SYNC_IPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 struct turnstile* FUNC4 (TYPE_1__*) ; 
 struct turnstile* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct turnstile* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct turnstile*) ; 
 struct turnstile* FUNC9 (uintptr_t,int /*<<< orphan*/ ,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct turnstile*,struct turnstile*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct turnstile*,int /*<<< orphan*/ ) ; 

void
FUNC12(ipc_port_t port)
{
	struct turnstile *turnstile = TURNSTILE_NULL;
	struct turnstile *inheritor = TURNSTILE_NULL;
	struct turnstile *send_turnstile = TURNSTILE_NULL;

retry_alloc:
	FUNC1(&port->ip_messages);

	if (FUNC5(port) == NULL ||
	    FUNC5(port)->ts_port_ref == 0) {

		if (turnstile == TURNSTILE_NULL) {
			FUNC2(&port->ip_messages);
			turnstile = FUNC7();
			goto retry_alloc;
		}

		send_turnstile = FUNC9((uintptr_t)port,
			FUNC6(port),
			turnstile, TURNSTILE_SYNC_IPC);
		turnstile = TURNSTILE_NULL;

		/*
		 * if port in transit, setup linkage for its turnstile,
		 * otherwise the link it to WL turnstile.
		 */
		if (FUNC3(port) &&
		    port->ip_receiver_name == MACH_PORT_NULL &&
		    port->ip_destination != IP_NULL) {
			FUNC0(port->ip_receiver_name == MACH_PORT_NULL);
			FUNC0(port->ip_destination != IP_NULL);

			inheritor = FUNC5(port->ip_destination);
		} else {
			inheritor = FUNC4(port);
		}
		FUNC10(send_turnstile, inheritor,
			TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE);
		/* turnstile complete will be called in ipc_port_send_turnstile_complete */
	}

	/* Increment turnstile counter */
	FUNC5(port)->ts_port_ref++;
	FUNC2(&port->ip_messages);

	if (send_turnstile) {
		FUNC11(send_turnstile,
			TURNSTILE_INTERLOCK_NOT_HELD);
	}
	if (turnstile != TURNSTILE_NULL) {
		FUNC8(turnstile);
	}
}