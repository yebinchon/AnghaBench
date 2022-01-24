#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct turnstile {int dummy; } ;
typedef  TYPE_1__* ipc_space_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  scalar_t__ ipc_importance_task_t ;
typedef  int boolean_t ;
struct TYPE_20__ {scalar_t__ ip_impdonation; int ip_impcount; scalar_t__ ip_receiver_name; scalar_t__ ip_tempowner; scalar_t__ ip_imp_task; int /*<<< orphan*/  ip_messages; TYPE_1__* ip_receiver; struct TYPE_20__* ip_destination; } ;
struct TYPE_19__ {TYPE_16__* is_task; } ;
struct TYPE_18__ {scalar_t__ task_imp_base; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ IIT_NULL ; 
 TYPE_2__* IP_NULL ; 
 scalar_t__ MACH_PORT_NULL ; 
 TYPE_16__* TASK_NULL ; 
 int TRUE ; 
 int TURNSTILE_IMMEDIATE_UPDATE ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_SYNC_IPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC25 (uintptr_t,int /*<<< orphan*/ ,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct turnstile*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (struct turnstile*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC28(
	ipc_port_t	port,
	ipc_port_t	dest)
{
	ipc_importance_task_t imp_task = IIT_NULL;
	ipc_importance_task_t release_imp_task = IIT_NULL;
	boolean_t imp_lock_held = FALSE;
	int assertcnt = 0;
	ipc_port_t base;
	struct turnstile *send_turnstile = TURNSTILE_NULL;

	FUNC0(port != IP_NULL);
	FUNC0(dest != IP_NULL);

	if (port == dest)
		return TRUE;
	base = dest;

	/* Check if destination needs a turnstile */
	FUNC20(dest);

	/* port is in limbo, so donation status is safe to latch */
	if (port->ip_impdonation != 0) {
		imp_lock_held = TRUE;
		FUNC8();
	}

	/*
	 *	First try a quick check that can run in parallel.
	 *	No circularity if dest is not in transit.
	 */
	FUNC4(port);

	/* 
	 * Even if port is just carrying assertions for others,
	 * we need the importance lock.
	 */
	if (port->ip_impcount > 0 && !imp_lock_held) {
		if (!FUNC9()) {
			FUNC7(port);
			FUNC8();
			FUNC4(port);
		}
		imp_lock_held = TRUE;
	}

	if (FUNC5(dest)) {
		if (!FUNC3(dest) ||
		    (dest->ip_receiver_name != MACH_PORT_NULL) ||
		    (dest->ip_destination == IP_NULL))
			goto not_circular;

		/* dest is in transit; further checking necessary */

		FUNC7(dest);
	}
	FUNC7(port);

	/* 
	 * We're about to pay the cost to serialize,
	 * just go ahead and grab importance lock.
	 */
	if (!imp_lock_held) {
		FUNC8();
		imp_lock_held = TRUE;
	}

	FUNC17(); /* massive serialization */

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

		FUNC18();

		/* port (== base) is in limbo */

		FUNC0(FUNC3(port));
		FUNC0(port->ip_receiver_name == MACH_PORT_NULL);
		FUNC0(port->ip_destination == IP_NULL);

		base = dest;
		while (base != IP_NULL) {
			ipc_port_t next;

			/* base is in transit or in limbo */

			FUNC0(FUNC3(base));
			FUNC0(base->ip_receiver_name == MACH_PORT_NULL);

			next = base->ip_destination;
			FUNC7(base);
			base = next;
		}

		if (imp_lock_held)
			FUNC15();

		FUNC19(dest);
		return TRUE;
	}

	/*
	 *	The guarantee:  lock port while the entire chain is locked.
	 *	Once port is locked, we can take a reference to dest,
	 *	add port to the chain, and unlock everything.
	 */

	FUNC4(port);
	FUNC18();

not_circular:
	/* port is in limbo */
	FUNC1(&port->ip_messages);

	FUNC0(FUNC3(port));
	FUNC0(port->ip_receiver_name == MACH_PORT_NULL);
	FUNC0(port->ip_destination == IP_NULL);

	FUNC6(dest);
	port->ip_destination = dest;

	/* must have been in limbo or still bound to a task */
	FUNC0(port->ip_tempowner != 0);

	/*
	 * We delayed dropping assertions from a specific task.
	 * Cache that info now (we'll drop assertions and the
	 * task reference below).
	 */
	release_imp_task = port->ip_imp_task;
	if (IIT_NULL != release_imp_task) {
		port->ip_imp_task = IIT_NULL;
	}
	assertcnt = port->ip_impcount;

	/* take the port out of limbo w.r.t. assertions */
	port->ip_tempowner = 0;

	/*
	 * Setup linkage for source port if it has a send turnstile i.e. it has
	 * a thread waiting in send or has a port enqueued in it or has sync ipc
	 * push from a special reply port.
	 */
	if (FUNC21(port)) {
		send_turnstile = FUNC25((uintptr_t)port,
			FUNC22(port),
			TURNSTILE_NULL, TURNSTILE_SYNC_IPC);

		FUNC26(send_turnstile, FUNC21(dest),
			(TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE));

		/* update complete and turnstile complete called after dropping all locks */
	}
	FUNC2(&port->ip_messages);

	/* now unlock chain */

	FUNC7(port);

	for (;;) {

		ipc_port_t next;
		/* every port along chain track assertions behind it */
		FUNC16(dest, assertcnt, base);

		if (dest == base)
			break;

		/* port is in transit */

		FUNC0(FUNC3(dest));
		FUNC0(dest->ip_receiver_name == MACH_PORT_NULL);
		FUNC0(dest->ip_destination != IP_NULL);
		FUNC0(dest->ip_tempowner == 0);

		next = dest->ip_destination;
		FUNC7(dest);
		dest = next;
	}

	/* base is not in transit */
	FUNC0(!FUNC3(base) ||
	       (base->ip_receiver_name != MACH_PORT_NULL) ||
	       (base->ip_destination == IP_NULL));

	/*
	 * Find the task to boost (if any).
	 * We will boost "through" ports that don't know
	 * about inheritance to deliver receive rights that
	 * do.
	 */
	if (FUNC3(base) && (assertcnt > 0)) {
		FUNC0(imp_lock_held);
		if (base->ip_tempowner != 0) {
			if (IIT_NULL != base->ip_imp_task) {
				/* specified tempowner task */
				imp_task = base->ip_imp_task;
				FUNC0(FUNC12(imp_task));
			}
			/* otherwise don't boost current task */

		} else if (base->ip_receiver_name != MACH_PORT_NULL) {
			ipc_space_t space = base->ip_receiver;

			/* only spaces with boost-accepting tasks */
			if (space->is_task != TASK_NULL &&
			    FUNC12(space->is_task->task_imp_base))
				imp_task = space->is_task->task_imp_base;
		}

		/* take reference before unlocking base */
		if (imp_task != IIT_NULL) {
			FUNC13(imp_task);
		}
	}

	FUNC7(base);

	/*
	 * Transfer assertions now that the ports are unlocked.
	 * Avoid extra overhead if transferring to/from the same task.
	 *
	 * NOTE: If a transfer is occurring, the new assertions will
	 * be added to imp_task BEFORE the importance lock is unlocked.
	 * This is critical - to avoid decrements coming from the kmsgs
	 * beating the increment to the task.
	 */
	boolean_t transfer_assertions = (imp_task != release_imp_task);

	if (imp_task != IIT_NULL) {
		FUNC0(imp_lock_held);
		if (transfer_assertions)
			FUNC11(imp_task, assertcnt);
	}

	if (release_imp_task != IIT_NULL) {
		FUNC0(imp_lock_held);
		if (transfer_assertions)
			FUNC10(release_imp_task, assertcnt);
	}

	if (imp_lock_held)
		FUNC15();

	/* All locks dropped, call turnstile_update_inheritor_complete for source port's turnstile */
	if (send_turnstile) {
		FUNC27(send_turnstile, TURNSTILE_INTERLOCK_NOT_HELD);

		/* Take the mq lock to call turnstile complete */
		FUNC1(&port->ip_messages);
		FUNC24((uintptr_t)port, FUNC22(port), NULL);
		send_turnstile = TURNSTILE_NULL;
		FUNC2(&port->ip_messages);
		FUNC23();
	}

	if (imp_task != IIT_NULL)
		FUNC14(imp_task);

	if (release_imp_task != IIT_NULL)
		FUNC14(release_imp_task);

	return FALSE;
}