#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct waitq {int dummy; } ;
struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqueue {int kq_state; int /*<<< orphan*/  kq_wqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct kqfile {TYPE_1__ kqf_sel; } ;
struct knote {int /*<<< orphan*/  kn_qos_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KQ_EVENT ; 
 int KQ_PROCESSING ; 
 int KQ_SEL ; 
 int KQ_SLEEP ; 
 int KQ_WAKEUP ; 
 int KQ_WORKLOOP ; 
 int KQ_WORKQ ; 
 int /*<<< orphan*/  THREAD_AWAKENED ; 
 int /*<<< orphan*/  WAITQ_ALL_PRIORITIES ; 
 struct kqueue* FUNC1 (struct knote*) ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC4 (struct kqworkloop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kqworkq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct knote *kn)
{
	struct kqueue *kq = FUNC1(kn);

	FUNC2(kq);

	if (kq->kq_state & KQ_WORKQ) {
		struct kqworkq *kqwq = (struct kqworkq *)kq;

		FUNC5(kqwq, kn->kn_qos_index);
	} else if (kq->kq_state & KQ_WORKLOOP) {
		struct kqworkloop *kqwl = (struct kqworkloop *)kq;

		/*
		 * kqworkloop_end_processing() will perform the required QoS
		 * computations when it unsets the processing mode.
		 */
		if (!FUNC3(kqwl)) {
			FUNC4(kqwl, kn->kn_qos_index);
		}
	} else {
		struct kqfile *kqf = (struct kqfile *)kq;

		/* flag wakeups during processing */
		if (kq->kq_state & KQ_PROCESSING)
			kq->kq_state |= KQ_WAKEUP;

		/* wakeup a thread waiting on this queue */
		if (kq->kq_state & (KQ_SLEEP | KQ_SEL)) {
			kq->kq_state &= ~(KQ_SLEEP | KQ_SEL);
			FUNC6((struct waitq *)&kq->kq_wqs, KQ_EVENT,
					THREAD_AWAKENED, WAITQ_ALL_PRIORITIES);
		}

		/* wakeup other kqueues/select sets we're inside */
		FUNC0(&kqf->kqf_sel.si_note, 0);
	}
}