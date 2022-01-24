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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kqtailq*) ; 
 int /*<<< orphan*/  KQ_EVENT ; 
 int KQ_PROCESSING ; 
 int KQ_PROCWAIT ; 
 int KQ_SEL ; 
 int KQ_SLEEP ; 
 int KQ_WORKQ ; 
 int /*<<< orphan*/  THREAD_RESTART ; 
 int /*<<< orphan*/  WAITQ_ALL_PRIORITIES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct kqtailq* FUNC2 (struct kqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct kqueue *kq)
{
	FUNC1((kq->kq_state & KQ_WORKQ) == 0);

	/* wakeup sleeping threads */
	if ((kq->kq_state & (KQ_SLEEP | KQ_SEL)) != 0) {
		kq->kq_state &= ~(KQ_SLEEP | KQ_SEL);
		(void)FUNC3((struct waitq *)&kq->kq_wqs,
		                         KQ_EVENT,
		                         THREAD_RESTART,
		                         WAITQ_ALL_PRIORITIES);
	}

	/* wakeup threads waiting their turn to process */
	if (kq->kq_state & KQ_PROCWAIT) {
		struct kqtailq *suppressq;

		FUNC1(kq->kq_state & KQ_PROCESSING);

		kq->kq_state &= ~KQ_PROCWAIT;
		suppressq = FUNC2(kq, NULL);
		(void)FUNC3((struct waitq *)&kq->kq_wqs,
		                         FUNC0(suppressq),
		                         THREAD_RESTART,
		                         WAITQ_ALL_PRIORITIES);
	}
}