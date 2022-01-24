#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct turnstile {int dummy; } ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_16__ {scalar_t__ ip_receiver_name; int /*<<< orphan*/  ip_messages; struct TYPE_16__* ip_destination; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* IP_NULL ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int TURNSTILE_IMMEDIATE_UPDATE ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_SYNC_IPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC17 (uintptr_t,int /*<<< orphan*/ ,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct turnstile*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (struct turnstile*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC20(
	ipc_port_t	port,
	ipc_port_t	dest)
{
#if IMPORTANCE_INHERITANCE
	/* adjust importance counts at the same time */
	return ipc_importance_check_circularity(port, dest);
#else
	ipc_port_t base;

	FUNC0(port != IP_NULL);
	FUNC0(dest != IP_NULL);

	if (port == dest)
		return TRUE;
	base = dest;

	/* Check if destination needs a turnstile */
	FUNC12(dest);

	/*
	 *	First try a quick check that can run in parallel.
	 *	No circularity if dest is not in transit.
	 */
	FUNC4(port);
	if (FUNC5(dest)) {
		if (!FUNC3(dest) ||
		    (dest->ip_receiver_name != MACH_PORT_NULL) ||
		    (dest->ip_destination == IP_NULL))
			goto not_circular;

		/* dest is in transit; further checking necessary */

		FUNC7(dest);
	}
	FUNC7(port);

	FUNC9(); /* massive serialization */

	/*
	 *	Search for the end of the chain (a port not in transit),
	 *	acquiring locks along the way.
	 */

	for (;;) {
		FUNC4(base);

		if (!FUNC3(base) ||
		    (base->ip_receiver_name != MACH_PORT_NULL) ||
		    (base->ip_destination == IP_NULL))
			break;

		base = base->ip_destination;
	}

	/* all ports in chain from dest to base, inclusive, are locked */

	if (port == base) {
		/* circularity detected! */

		FUNC10();

		/* port (== base) is in limbo */

		FUNC0(FUNC3(port));
		FUNC0(port->ip_receiver_name == MACH_PORT_NULL);
		FUNC0(port->ip_destination == IP_NULL);

		base = dest;
		while (base != IP_NULL) {
			ipc_port_t next;

			/* dest is in transit or in limbo */

			FUNC0(FUNC3(base));
			FUNC0(base->ip_receiver_name == MACH_PORT_NULL);

			next = base->ip_destination;
			FUNC7(base);
			base = next;
		}

		FUNC11(dest);
		return TRUE;
	}

	/*
	 *	The guarantee:  lock port while the entire chain is locked.
	 *	Once port is locked, we can take a reference to dest,
	 *	add port to the chain, and unlock everything.
	 */

	FUNC4(port);
	FUNC10();

not_circular:
	FUNC1(&port->ip_messages);

	/* port is in limbo */

	FUNC0(FUNC3(port));
	FUNC0(port->ip_receiver_name == MACH_PORT_NULL);
	FUNC0(port->ip_destination == IP_NULL);

	FUNC6(dest);
	port->ip_destination = dest;

	/* Setup linkage for source port if it has sync ipc push */
	struct turnstile *send_turnstile = TURNSTILE_NULL;
	if (FUNC13(port)) {
		send_turnstile = FUNC17((uintptr_t)port,
			FUNC14(port),
			TURNSTILE_NULL, TURNSTILE_SYNC_IPC);

		FUNC18(send_turnstile, FUNC13(dest),
			(TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE));

		/* update complete and turnstile complete called after dropping all locks */
	}
	FUNC2(&port->ip_messages);

	/* now unlock chain */

	FUNC7(port);

	for (;;) {
		ipc_port_t next;

		if (dest == base)
			break;

		/* port is in transit */

		FUNC0(FUNC3(dest));
		FUNC0(dest->ip_receiver_name == MACH_PORT_NULL);
		FUNC0(dest->ip_destination != IP_NULL);

		next = dest->ip_destination;
		FUNC7(dest);
		dest = next;
	}

	/* base is not in transit */
	FUNC0(!FUNC3(base) ||
	       (base->ip_receiver_name != MACH_PORT_NULL) ||
	       (base->ip_destination == IP_NULL));

	FUNC7(base);

	/* All locks dropped, call turnstile_update_inheritor_complete for source port's turnstile */
	if (send_turnstile) {
		FUNC19(send_turnstile, TURNSTILE_INTERLOCK_NOT_HELD);

		/* Take the mq lock to call turnstile complete */
		FUNC1(&port->ip_messages);
		FUNC16((uintptr_t)port, FUNC14(port), NULL);
		send_turnstile = TURNSTILE_NULL;
		FUNC2(&port->ip_messages);
		FUNC15();
	}

	return FALSE;
#endif /* !IMPORTANCE_INHERITANCE */
}