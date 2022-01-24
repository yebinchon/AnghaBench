#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct turnstile {int dummy; } ;
struct knote {struct turnstile* kn_hook; scalar_t__* kn_ext; } ;
typedef  TYPE_1__* ipc_port_t ;
typedef  TYPE_2__* ipc_mqueue_t ;
struct TYPE_13__ {int /*<<< orphan*/  imq_klist; } ;
struct TYPE_12__ {scalar_t__ ip_sync_link_state; struct knote* ip_sync_inheritor_knote; scalar_t__ ip_specialreply; TYPE_2__ ip_messages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct turnstile* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int IPC_PORT_ADJUST_SR_ENABLE_EVENT ; 
 int IPC_PORT_ADJUST_SR_NONE ; 
 scalar_t__ PORT_SYNC_LINK_WORKLOOP_KNOTE ; 
 int /*<<< orphan*/  TURNSTILE_IMMEDIATE_UPDATE ; 
 int /*<<< orphan*/  TURNSTILE_INHERITOR_NULL ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_HELD ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct knote*) ; 
 struct turnstile* FUNC11 (int /*<<< orphan*/ ) ; 
 struct turnstile* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (uintptr_t,struct turnstile**,struct turnstile**) ; 
 int /*<<< orphan*/  FUNC15 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC16 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC17 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC18 (struct turnstile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct turnstile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(struct knote *kn)
{
	struct turnstile *ts = TURNSTILE_NULL;

	if (kn->kn_ext[3]) {
		ipc_port_t port = (ipc_port_t)kn->kn_ext[3];
		ipc_mqueue_t mqueue = &port->ip_messages;

		FUNC5(port);
		if (port->ip_specialreply) {
			/*
			 * If the reply has been sent to the special reply port already,
			 * then the special reply port may already be reused to do something
			 * entirely different.
			 *
			 * However, the only reason for it to still point to this knote is
			 * that it's still waiting for a reply, so when this is the case,
			 * neuter the linkage.
			 */
			if (port->ip_sync_link_state == PORT_SYNC_LINK_WORKLOOP_KNOTE &&
					port->ip_sync_inheritor_knote == kn) {
				FUNC8(port, NULL,
						(IPC_PORT_ADJUST_SR_NONE | IPC_PORT_ADJUST_SR_ENABLE_EVENT), FALSE);
			} else {
				FUNC7(port);
			}
		} else {
			struct turnstile *kq_ts = FUNC11(FUNC10(kn));

			/*
			 * For receive rights, if their IMQ_INHERITOR() is still this
			 * workloop, then sever the link.
			 *
			 * It has a theoretical hole: if the port is sent again to a new
			 * receive right that is also monitored by the same kqueue,
			 * we would sever the link incorrectly.
			 *
			 * However this would be a REALLY cumbersome thing to do.
			 */
			FUNC3(mqueue);
			if (!FUNC1(mqueue) && FUNC0(mqueue) == kq_ts) {
				FUNC16(kq_ts);
				FUNC9(&mqueue->imq_klist);
				ts = FUNC12(port);
			}
			if (ts) {
				FUNC18(ts, TURNSTILE_INHERITOR_NULL,
						TURNSTILE_IMMEDIATE_UPDATE);
				FUNC17(ts);
			}
			FUNC4(mqueue);
			FUNC7(port);

			if (ts) {
				FUNC19(ts, TURNSTILE_INTERLOCK_NOT_HELD);
				FUNC15(ts);
			}
		}

		FUNC6(port);
		kn->kn_ext[3] = 0;
	}

	if (kn->kn_hook) {
		ts = kn->kn_hook;

		FUNC18(ts, TURNSTILE_INHERITOR_NULL,
				TURNSTILE_IMMEDIATE_UPDATE);
		FUNC19(ts, TURNSTILE_INTERLOCK_HELD);

		FUNC14((uintptr_t)kn, (struct turnstile **)&kn->kn_hook, &ts);
		FUNC13();

		FUNC2(ts);
		FUNC15(ts);
	}
}