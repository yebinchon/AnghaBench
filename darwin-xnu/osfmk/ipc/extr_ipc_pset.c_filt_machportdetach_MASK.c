#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct turnstile {int dummy; } ;
struct TYPE_9__ {TYPE_2__* p_mqueue; } ;
struct knote {int kn_status; int kn_flags; TYPE_1__ kn_ptr; } ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  TYPE_2__* ipc_mqueue_t ;
struct TYPE_10__ {int /*<<< orphan*/  imq_wait_queue; int /*<<< orphan*/  imq_klist; } ;

/* Variables and functions */
 int EV_EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* IMQ_NULL ; 
 scalar_t__ IOT_PORT ; 
 scalar_t__ IOT_PORT_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct knote*) ; 
 int KN_VANISHED ; 
 int TURNSTILE_IMMEDIATE_UPDATE ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct knote*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct knote*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 struct turnstile* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC14 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC15 (struct turnstile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct turnstile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(
	struct knote *kn)
{
	ipc_mqueue_t mqueue = kn->kn_ptr.p_mqueue;
	ipc_object_t object = FUNC11(mqueue);
	struct turnstile *send_turnstile = TURNSTILE_NULL;

	FUNC3(kn);

	FUNC4(mqueue);
	if ((kn->kn_status & KN_VANISHED) || (kn->kn_flags & EV_EOF)) {
		/*
		 * ipc_mqueue_changed() already unhooked this knote from the mqueue,
		 */
	} else {
		FUNC2(FUNC0(mqueue));
		FUNC1(&mqueue->imq_klist, kn);
	}

	if (FUNC6(object) == IOT_PORT) {
		ipc_port_t port = FUNC8(mqueue);

		send_turnstile = FUNC12(port);
		if (send_turnstile) {
			FUNC14(send_turnstile);
			FUNC15(send_turnstile,
				FUNC9(port),
				TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_IMMEDIATE_UPDATE);
		}
	}

	/* Clear the knote pointer once the knote has been removed from turnstile */
	kn->kn_ptr.p_mqueue = IMQ_NULL;
	FUNC5(mqueue);

	if (send_turnstile) {
		FUNC16(send_turnstile,
				TURNSTILE_INTERLOCK_NOT_HELD);
		FUNC13(send_turnstile);
	}

	if (FUNC6(object) == IOT_PORT_SET) {
		/*
		 * Unlink the portset wait queue from knote/kqueue.
		 * JMM - Does this need to be atomic under the mq lock?
		 */
		(void)FUNC10(kn, &mqueue->imq_wait_queue);
	}
	FUNC7(object);
}