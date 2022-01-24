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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifclassq {int /*<<< orphan*/ * ifcq_request; int /*<<< orphan*/  ifcq_dequeue_sc_multi; int /*<<< orphan*/  ifcq_dequeue_multi; int /*<<< orphan*/  ifcq_dequeue_sc; int /*<<< orphan*/  ifcq_dequeue; int /*<<< orphan*/ * ifcq_enqueue; int /*<<< orphan*/ * ifcq_disc; int /*<<< orphan*/  ifcq_type; } ;
typedef  int /*<<< orphan*/ * ifclassq_req_func ;
typedef  int /*<<< orphan*/ * ifclassq_enq_func ;
typedef  int /*<<< orphan*/  ifclassq_deq_sc_multi_func ;
typedef  int /*<<< orphan*/  ifclassq_deq_sc_func ;
typedef  int /*<<< orphan*/  ifclassq_deq_multi_func ;
typedef  int /*<<< orphan*/  ifclassq_deq_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct ifclassq *ifq, u_int32_t type, void *discipline,
    ifclassq_enq_func enqueue, ifclassq_deq_func dequeue,
    ifclassq_deq_sc_func dequeue_sc, ifclassq_deq_multi_func dequeue_multi,
    ifclassq_deq_sc_multi_func dequeue_sc_multi, ifclassq_req_func request)
{
	FUNC0(ifq);

	FUNC1(ifq->ifcq_disc == NULL);
	FUNC1(enqueue != NULL);
	FUNC1(request != NULL);

	ifq->ifcq_type = type;
	ifq->ifcq_disc = discipline;
	ifq->ifcq_enqueue = enqueue;
	ifq->ifcq_dequeue = dequeue;
	ifq->ifcq_dequeue_sc = dequeue_sc;
	ifq->ifcq_dequeue_multi = dequeue_multi;
	ifq->ifcq_dequeue_sc_multi = dequeue_sc_multi;
	ifq->ifcq_request = request;

	return (0);
}