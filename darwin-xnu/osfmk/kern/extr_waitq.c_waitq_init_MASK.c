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
struct waitq {int waitq_fifo; int waitq_irq; int waitq_turnstile_or_port; int waitq_isvalid; int /*<<< orphan*/  waitq_queue; int /*<<< orphan*/  waitq_prio_queue; scalar_t__ waitq_prepost_id; scalar_t__ waitq_set_id; scalar_t__ waitq_eventmask; int /*<<< orphan*/  waitq_type; scalar_t__ waitq_prepost; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_BUILTIN_MAX_HEAP ; 
 int SYNC_POLICY_DISABLE_IRQ ; 
 int SYNC_POLICY_FIXED_PRIORITY ; 
 int SYNC_POLICY_REVERSED ; 
 int SYNC_POLICY_TURNSTILE ; 
 int /*<<< orphan*/  WQT_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 

kern_return_t FUNC5(struct waitq *waitq, int policy)
{
	FUNC0(waitq != NULL);

	/* only FIFO and LIFO for now */
	if ((policy & SYNC_POLICY_FIXED_PRIORITY) != 0)
		return KERN_INVALID_ARGUMENT;

	waitq->waitq_fifo = ((policy & SYNC_POLICY_REVERSED) == 0);
	waitq->waitq_irq = !!(policy & SYNC_POLICY_DISABLE_IRQ);
	waitq->waitq_prepost = 0;
	waitq->waitq_type = WQT_QUEUE;
	waitq->waitq_turnstile_or_port = !!(policy & SYNC_POLICY_TURNSTILE);
	waitq->waitq_eventmask = 0;

	waitq->waitq_set_id = 0;
	waitq->waitq_prepost_id = 0;

	FUNC4(waitq);
	if (FUNC3(waitq)) {
		/* For turnstile, initialize it as a priority queue */
		FUNC1(&waitq->waitq_prio_queue,
				PRIORITY_QUEUE_BUILTIN_MAX_HEAP);
		FUNC0(waitq->waitq_fifo == 0);
	} else {
		FUNC2(&waitq->waitq_queue);
	}

	waitq->waitq_isvalid = 1;
	return KERN_SUCCESS;
}