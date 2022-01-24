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
 int /*<<< orphan*/  BSD_KEVENT_KQ_PROCESS_BEGIN ; 
 int /*<<< orphan*/  FUNC0 (struct kqtailq*) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int KQ_DRAIN ; 
 int KQ_PROCESSING ; 
 int KQ_PROCWAIT ; 
 int KQ_WAKEUP ; 
 int KQ_WORKLOOP ; 
 int KQ_WORKQ ; 
 int /*<<< orphan*/  QOS_INDEX_KQFILE ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int THREAD_UNINT ; 
 int THREAD_WAIT_NOREPORT ; 
 int /*<<< orphan*/  TIMEOUT_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*) ; 
 struct kqtailq* FUNC7 (struct kqueue*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct kqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct waitq*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct kqueue *kq)
{
	struct kqtailq *suppressq;

	FUNC6(kq);

	FUNC4((kq->kq_state & (KQ_WORKQ | KQ_WORKLOOP)) == 0);
	FUNC1(FUNC2(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_START,
	              FUNC3(kq), 0);

	/* wait to become the exclusive processing thread */
	for (;;) {
		if (kq->kq_state & KQ_DRAIN) {
			FUNC1(FUNC2(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_END,
			              FUNC3(kq), 2);
			return -1;
		}

		if ((kq->kq_state & KQ_PROCESSING) == 0)
			break;

		/* if someone else is processing the queue, wait */
		kq->kq_state |= KQ_PROCWAIT;
		suppressq = FUNC7(kq, NULL);
		FUNC11((struct waitq *)&kq->kq_wqs,
				FUNC0(suppressq), THREAD_UNINT | THREAD_WAIT_NOREPORT,
				TIMEOUT_WAIT_FOREVER);

		FUNC9(kq);
		FUNC10(THREAD_CONTINUE_NULL);
		FUNC5(kq);
	}

	/* Nobody else processing */

	/* clear pre-posts and KQ_WAKEUP now, in case we bail early */
	FUNC12(&kq->kq_wqs);
	kq->kq_state &= ~KQ_WAKEUP;

	/* anything left to process? */
	if (FUNC8(kq, QOS_INDEX_KQFILE)) {
		FUNC1(FUNC2(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_END,
		              FUNC3(kq), 1);
		return -1;
	}

	/* convert to processing mode */
	kq->kq_state |= KQ_PROCESSING;

	FUNC1(FUNC2(BSD_KEVENT_KQ_PROCESS_BEGIN) | DBG_FUNC_END,
	              FUNC3(kq));

	return 0;
}