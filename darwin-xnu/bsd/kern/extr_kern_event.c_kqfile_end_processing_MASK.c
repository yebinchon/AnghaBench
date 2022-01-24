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
struct waitq {int dummy; } ;
struct kqueue {int kq_state; int /*<<< orphan*/  kq_wqs; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSD_KEVENT_KQ_PROCESS_END ; 
 int /*<<< orphan*/  FUNC0 (struct kqtailq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int KN_SUPPRESSED ; 
 int KQ_PROCESSING ; 
 int KQ_PROCWAIT ; 
 int KQ_WORKLOOP ; 
 int KQ_WORKQ ; 
 struct knote* FUNC3 (struct kqtailq*) ; 
 int /*<<< orphan*/  THREAD_AWAKENED ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*) ; 
 int /*<<< orphan*/  WAITQ_ALL_PRIORITIES ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct knote*) ; 
 int /*<<< orphan*/  FUNC7 (struct kqueue*) ; 
 struct kqtailq* FUNC8 (struct kqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct kqueue *kq)
{
	struct knote *kn;
	struct kqtailq *suppressq;
	int procwait;

	FUNC7(kq);

	FUNC5((kq->kq_state & (KQ_WORKQ|KQ_WORKLOOP)) == 0);

	FUNC1(FUNC2(BSD_KEVENT_KQ_PROCESS_END),
			FUNC4(kq), 0);

	/*
	 * Return suppressed knotes to their original state.
	 */
	suppressq = FUNC8(kq, NULL);
	while ((kn = FUNC3(suppressq)) != NULL) {
		FUNC5(kn->kn_status & KN_SUPPRESSED);
		FUNC6(kn);
	}

	procwait = (kq->kq_state & KQ_PROCWAIT);
	kq->kq_state &= ~(KQ_PROCESSING | KQ_PROCWAIT);

	if (procwait) {
		/* first wake up any thread already waiting to process */
		FUNC9((struct waitq *)&kq->kq_wqs,
		                   FUNC0(suppressq),
		                   THREAD_AWAKENED,
		                   WAITQ_ALL_PRIORITIES);
	}
}