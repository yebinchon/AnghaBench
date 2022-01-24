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
struct uthread {struct kqrequest* uu_kqr_bound; } ;
struct kqworkq {int /*<<< orphan*/  kqwq_kqueue; } ;
struct kqrequest {scalar_t__ kqr_thread; int kqr_state; int /*<<< orphan*/  kqr_qos_index; int /*<<< orphan*/  kqr_suppressed; } ;
struct knote {int kn_status; } ;

/* Variables and functions */
 int KEVENT_FLAG_PARKING ; 
 int KN_STAYACTIVE ; 
 int KN_SUPPRESSED ; 
 int KQR_THREQUESTED ; 
 int KQR_WAKEUP ; 
 int KQWQAE_BEGIN_PROCESSING ; 
 int KQWQAE_UNBIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct knote* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 struct uthread* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct knote*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqworkq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct kqrequest*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kqworkq*,struct kqrequest*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int
FUNC12(struct kqworkq *kqwq, struct kqrequest *kqr,
		int kevent_flags, int kqwqae_op)
{
	thread_qos_t old_override = THREAD_QOS_UNSPECIFIED;
	thread_t thread = kqr->kqr_thread;
	struct knote *kn;
	int rc = 0;
	bool seen_stayactive = false, unbind;

	FUNC8(&kqwq->kqwq_kqueue);

	if (!FUNC0(&kqr->kqr_suppressed)) {
		/*
		 * Return suppressed knotes to their original state.
		 * For workq kqueues, suppressed ones that are still
		 * truly active (not just forced into the queue) will
		 * set flags we check below to see if anything got
		 * woken up.
		 */
		while ((kn = FUNC1(&kqr->kqr_suppressed)) != NULL) {
			FUNC2(kn->kn_status & KN_SUPPRESSED);
			FUNC5(kn);
			if (kn->kn_status & KN_STAYACTIVE) {
				seen_stayactive = true;
			}
		}
	}

	FUNC6(kqwq);

#if DEBUG || DEVELOPMENT
	thread_t self = current_thread();
	struct uthread *ut = get_bsdthread_info(self);

	assert(kqr->kqr_state & KQR_THREQUESTED);
	assert(kqr->kqr_thread == self);
	assert(ut->uu_kqr_bound == kqr);
#endif // DEBUG || DEVELOPMENT

	if (kqwqae_op == KQWQAE_UNBIND) {
		unbind = true;
	} else if ((kevent_flags & KEVENT_FLAG_PARKING) == 0) {
		unbind = false;
	} else if (kqwqae_op == KQWQAE_BEGIN_PROCESSING && seen_stayactive) {
		/*
		 * When we unsuppress stayactive knotes, for the kind that are hooked
		 * through select, we need to process once before we can assert there's
		 * no event pending. Hence we can't unbind during BEGIN PROCESSING.
		 */
		unbind = false;
	} else {
		unbind = ((kqr->kqr_state & KQR_WAKEUP) == 0);
	}
	if (unbind) {
		old_override = FUNC10(kqwq, kqr, thread);
		rc = -1;
		/*
		 * request a new thread if we didn't process the whole queue or real events
		 * have happened (not just putting stay-active events back).
		 */
		if (kqr->kqr_state & KQR_WAKEUP) {
			FUNC9(&kqwq->kqwq_kqueue, kqr,
					kqr->kqr_qos_index, 0);
		}
	}

	if (rc == 0) {
		/*
		 * Reset wakeup bit to notice events firing while we are processing,
		 * as we cannot rely on the bucket queue emptiness because of stay
		 * active knotes.
		 */
		kqr->kqr_state &= ~KQR_WAKEUP;
	}

	FUNC7(kqwq);

	if (old_override) {
		FUNC11(thread);
	}

	return rc;
}