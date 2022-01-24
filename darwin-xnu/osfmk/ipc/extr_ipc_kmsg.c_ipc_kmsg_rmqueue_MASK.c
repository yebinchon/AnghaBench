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
typedef  TYPE_1__* ipc_kmsg_t ;
typedef  TYPE_2__* ipc_kmsg_queue_t ;
struct TYPE_10__ {TYPE_1__* ikmq_base; } ;
struct TYPE_9__ {scalar_t__ ikm_next; scalar_t__ ikm_prev; } ;

/* Variables and functions */
 scalar_t__ IKM_BOGUS ; 
 TYPE_1__* IKM_NULL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

void
FUNC3(
	ipc_kmsg_queue_t	queue,
	ipc_kmsg_t		kmsg)
{
	ipc_kmsg_t next, prev;

	FUNC1(queue->ikmq_base != IKM_NULL);

	next = kmsg->ikm_next;
	prev = kmsg->ikm_prev;

	if (next == kmsg) {
		FUNC1(prev == kmsg);
		FUNC1(queue->ikmq_base == kmsg);

		queue->ikmq_base = IKM_NULL;
	} else {
		if (FUNC0(next->ikm_prev != kmsg || prev->ikm_next != kmsg)) {
			FUNC2("ipc_kmsg_rmqueue: inconsistent prev/next pointers. "
				"(prev->next: %p, next->prev: %p, kmsg: %p)",
				prev->ikm_next, next->ikm_prev, kmsg);
		}

		if (queue->ikmq_base == kmsg)
			queue->ikmq_base = next;

		next->ikm_prev = prev;
		prev->ikm_next = next;
	}
	/* XXX Temporary debug logic */
	FUNC1((kmsg->ikm_next = IKM_BOGUS) == IKM_BOGUS);
	FUNC1((kmsg->ikm_prev = IKM_BOGUS) == IKM_BOGUS);
}