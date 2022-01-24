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
typedef  int /*<<< orphan*/  thread_t ;
typedef  size_t thread_qos_t ;
struct kqrequest {int kqr_state; int /*<<< orphan*/  kqr_wakeup_indexes; int /*<<< orphan*/  kqr_thread; } ;
struct kqueue {int kq_state; } ;
struct kqworkloop {int /*<<< orphan*/  kqwl_dynamicid; int /*<<< orphan*/  kqwl_owner; int /*<<< orphan*/ * kqwl_queue; struct kqrequest kqwl_request; struct kqueue kqwl_kqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSD_KEVENT_KQWL_PROCESS_END ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KEVENT_FLAG_PARKING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int KQR_R2K_NOTIF_ARMED ; 
 int KQR_WAKEUP ; 
 int /*<<< orphan*/  KQUEUE_CANT_BE_LAST_REF ; 
 size_t KQWL_BUCKET_STAYACTIVE ; 
 int /*<<< orphan*/  KQWL_STAYACTIVE_FIRED_BIT ; 
 int /*<<< orphan*/  KQWL_UTQ_PARKING ; 
 int /*<<< orphan*/  KQWL_UTQ_RECOMPUTE_WAKEUP_QOS ; 
 int /*<<< orphan*/  KQWL_UTQ_UPDATE_WAKEUP_QOS ; 
 int KQ_PROCESSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC5 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqworkloop*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct kqworkloop*) ; 
 size_t FUNC9 (struct kqworkloop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kqworkloop*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct kqworkloop *kqwl, int flags, int kevent_flags)
{
	struct kqueue *kq = &kqwl->kqwl_kqueue;
	struct kqrequest *kqr = &kqwl->kqwl_request;
	thread_qos_t old_override = THREAD_QOS_UNSPECIFIED, qos_override;
	thread_t thread = kqr->kqr_thread;
	int rc = 0;

	FUNC6(kq);

	FUNC0(FUNC1(BSD_KEVENT_KQWL_PROCESS_END) | DBG_FUNC_START,
			kqwl->kqwl_dynamicid, 0, 0);

	if (flags & KQ_PROCESSING) {
		FUNC3(kq->kq_state & KQ_PROCESSING);

		/*
		 * If we still have queued stayactive knotes, remember we didn't finish
		 * processing all of them.  This should be extremely rare and would
		 * require to have a lot of them registered and fired.
		 */
		if (!FUNC2(&kqwl->kqwl_queue[KQWL_BUCKET_STAYACTIVE])) {
			FUNC4(kqwl);
			FUNC10(kqwl, KQWL_UTQ_UPDATE_WAKEUP_QOS,
					KQWL_BUCKET_STAYACTIVE);
			FUNC5(kqwl);
		}

		/*
		 * When KEVENT_FLAG_PARKING is set, we need to attempt an unbind while
		 * still under the lock.
		 *
		 * So we do everything kqworkloop_unbind() would do, but because we're
		 * inside kqueue_process(), if the workloop actually received events
		 * while our locks were dropped, we have the opportunity to fail the end
		 * processing and loop again.
		 *
		 * This avoids going through the process-wide workqueue lock hence
		 * scales better.
		 */
		if (kevent_flags & KEVENT_FLAG_PARKING) {
			qos_override = FUNC8(kqwl);
		}
	}

	FUNC4(kqwl);

	if (kevent_flags & KEVENT_FLAG_PARKING) {
		FUNC10(kqwl, KQWL_UTQ_PARKING, qos_override);
		if ((kqr->kqr_state & KQR_WAKEUP) && !kqwl->kqwl_owner) {
			/*
			 * Reset wakeup bit to notice stay active events firing while we are
			 * processing, as we cannot rely on the stayactive bucket emptiness.
			 */
			kqr->kqr_wakeup_indexes &= ~KQWL_STAYACTIVE_FIRED_BIT;
			rc = -1;
		} else {
			old_override = FUNC9(kqwl, thread);
			(void)FUNC7(kqwl, KQUEUE_CANT_BE_LAST_REF);
			kq->kq_state &= ~flags;
		}
	} else {
		kq->kq_state &= ~flags;
		kqr->kqr_state |= KQR_R2K_NOTIF_ARMED;
		FUNC10(kqwl, KQWL_UTQ_RECOMPUTE_WAKEUP_QOS, 0);
	}

	FUNC5(kqwl);

	if (old_override) {
		FUNC11(thread);
	}

	FUNC0(FUNC1(BSD_KEVENT_KQWL_PROCESS_END) | DBG_FUNC_END,
			kqwl->kqwl_dynamicid, 0, 0);

	return rc;
}