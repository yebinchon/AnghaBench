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
typedef  int u_int32_t ;
struct ifclassq {int ifcq_type; int ifcq_flags; int /*<<< orphan*/ * ifcq_request; int /*<<< orphan*/ * ifcq_dequeue_sc; int /*<<< orphan*/ * ifcq_dequeue; int /*<<< orphan*/ * ifcq_enqueue; int /*<<< orphan*/ * ifcq_disc; } ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;

/* Variables and functions */
 int ENXIO ; 
 int IFCQF_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
#define  PKTSCHEDT_FQ_CODEL 130 
 scalar_t__ PKTSCHEDT_NONE ; 
#define  PKTSCHEDT_QFQ 129 
#define  PKTSCHEDT_TCQ 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ifclassq*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ machclk_freq ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int FUNC4 (struct ifclassq*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ifclassq*,int,int /*<<< orphan*/ ) ; 

int
FUNC6(struct ifclassq *ifq, u_int32_t scheduler, u_int32_t sflags,
    classq_pkt_type_t ptype)
{
	int error = 0;
	u_int32_t rflags;

	FUNC0(ifq);

	FUNC1(machclk_freq != 0);

	/* Nothing to do unless the scheduler type changes */
	if (ifq->ifcq_type == scheduler)
		return (0);

	/*
	 * Remember the flags that need to be restored upon success, as
	 * they may be cleared when we tear down existing scheduler.
	 */
	rflags = (ifq->ifcq_flags & IFCQF_ENABLED);

	if (ifq->ifcq_type != PKTSCHEDT_NONE) {
		(void) FUNC3(ifq);

		/* Teardown should have succeeded */
		FUNC1(ifq->ifcq_type == PKTSCHEDT_NONE);
		FUNC1(ifq->ifcq_disc == NULL);
		FUNC1(ifq->ifcq_enqueue == NULL);
		FUNC1(ifq->ifcq_dequeue == NULL);
		FUNC1(ifq->ifcq_dequeue_sc == NULL);
		FUNC1(ifq->ifcq_request == NULL);
	}

	switch (scheduler) {
	case PKTSCHEDT_TCQ:
		error = FUNC5(ifq, sflags, ptype);
		break;

	case PKTSCHEDT_QFQ:
		error = FUNC4(ifq, sflags, ptype);
		break;
	case PKTSCHEDT_FQ_CODEL:
		error = FUNC2(ifq, sflags, ptype);
		break;
	default:
		error = ENXIO;
		break;
	}

	if (error == 0)
		ifq->ifcq_flags |= rflags;

	return (error);
}