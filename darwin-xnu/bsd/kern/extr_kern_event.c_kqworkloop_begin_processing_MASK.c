#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ thread_qos_t ;
struct kqueue {int kq_state; } ;
struct kqrequest {scalar_t__ kqr_thread; int kqr_state; int /*<<< orphan*/  kqr_wakeup_indexes; int /*<<< orphan*/  kqr_suppressed; } ;
struct kqworkloop {int /*<<< orphan*/  kqwl_dynamicid; scalar_t__ kqwl_owner; int /*<<< orphan*/ * kqwl_queue; struct kqueue kqwl_kqueue; struct kqrequest kqwl_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSD_KEVENT_KQWL_PROCESS_BEGIN ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int KEVENT_FLAG_PARKING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int KQR_THOVERCOMMIT ; 
 int KQR_WAKEUP ; 
 int /*<<< orphan*/  KQUEUE_CANT_BE_LAST_REF ; 
 size_t KQWL_BUCKET_STAYACTIVE ; 
 int /*<<< orphan*/  KQWL_STAYACTIVE_FIRED_BIT ; 
 int KQWL_UTQ_NONE ; 
 int KQWL_UTQ_PARKING ; 
 int KQWL_UTQ_RESET_WAKEUP_OVERRIDE ; 
 int KQWL_UTQ_UNBINDING ; 
 int KQ_PROCESSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqworkloop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct kqworkloop*) ; 
 scalar_t__ FUNC9 (struct kqworkloop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct kqworkloop*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int
FUNC12(struct kqworkloop *kqwl, unsigned int kevent_flags)
{
	struct kqrequest *kqr = &kqwl->kqwl_request;
	struct kqueue *kq = &kqwl->kqwl_kqueue;
	thread_qos_t old_override = THREAD_QOS_UNSPECIFIED, qos_override;
	thread_t thread = kqr->kqr_thread;
	int rc = 0, op = KQWL_UTQ_NONE;

	FUNC6(kq);

	FUNC0(FUNC1(BSD_KEVENT_KQWL_PROCESS_BEGIN) | DBG_FUNC_START,
	              kqwl->kqwl_dynamicid, 0, 0);

	/* nobody else should still be processing */
	FUNC3((kq->kq_state & KQ_PROCESSING) == 0);

	kq->kq_state |= KQ_PROCESSING;

	if (!FUNC2(&kqr->kqr_suppressed)) {
		op = KQWL_UTQ_RESET_WAKEUP_OVERRIDE;
	}

	if (kevent_flags & KEVENT_FLAG_PARKING) {
		/*
		 * When "parking" we want to process events and if no events are found
		 * unbind.
		 *
		 * However, non overcommit threads sometimes park even when they have
		 * more work so that the pool can narrow.  For these, we need to unbind
		 * early, so that calling kqworkloop_update_threads_qos() can ask the
		 * workqueue subsystem whether the thread should park despite having
		 * pending events.
		 */
		if (kqr->kqr_state & KQR_THOVERCOMMIT) {
			op = KQWL_UTQ_PARKING;
		} else {
			op = KQWL_UTQ_UNBINDING;
		}
	}
	if (op == KQWL_UTQ_NONE) {
		goto done;
	}

	qos_override = FUNC8(kqwl);

	FUNC4(kqwl);

	if (op == KQWL_UTQ_UNBINDING) {
		old_override = FUNC9(kqwl, thread);
		(void)FUNC7(kqwl, KQUEUE_CANT_BE_LAST_REF);
	}
	FUNC10(kqwl, op, qos_override);
	if (op == KQWL_UTQ_PARKING) {
		if (!FUNC2(&kqwl->kqwl_queue[KQWL_BUCKET_STAYACTIVE])) {
			/*
			 * We cannot trust KQR_WAKEUP when looking at stay active knotes.
			 * We need to process once, and kqworkloop_end_processing will
			 * handle the unbind.
			 */
		} else if ((kqr->kqr_state & KQR_WAKEUP) == 0 || kqwl->kqwl_owner) {
			old_override = FUNC9(kqwl, thread);
			(void)FUNC7(kqwl, KQUEUE_CANT_BE_LAST_REF);
			rc = -1;
		}
	} else if (op == KQWL_UTQ_UNBINDING) {
		if (kqr->kqr_thread == thread) {
			/*
			 * The thread request fired again, passed the admission check and
			 * got bound to the current thread again.
			 */
		} else {
			rc = -1;
		}
	}

	if (rc == 0) {
		/*
		 * Reset wakeup bit to notice stay active events firing while we are
		 * processing, as we cannot rely on the stayactive bucket emptiness.
		 */
		kqr->kqr_wakeup_indexes &= ~KQWL_STAYACTIVE_FIRED_BIT;
	} else {
		kq->kq_state &= ~KQ_PROCESSING;
	}

	FUNC5(kqwl);

	if (old_override) {
		FUNC11(thread);
	}

done:
	FUNC0(FUNC1(BSD_KEVENT_KQWL_PROCESS_BEGIN) | DBG_FUNC_END,
	              kqwl->kqwl_dynamicid, 0, 0);

	return rc;
}