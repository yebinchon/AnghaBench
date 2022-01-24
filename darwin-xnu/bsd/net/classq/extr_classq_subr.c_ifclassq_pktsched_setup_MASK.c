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
struct ifnet {int if_eflags; int if_output_sched_model; } ;
struct ifclassq {int /*<<< orphan*/  ifcq_sflags; struct ifnet* ifcq_ifp; } ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int IFEF_TXSTART ; 
#define  IFNET_SCHED_MODEL_DRIVER_MANAGED 130 
#define  IFNET_SCHED_MODEL_FQ_CODEL 129 
#define  IFNET_SCHED_MODEL_NORMAL 128 
 int /*<<< orphan*/  PKTSCHEDT_FQ_CODEL ; 
 int /*<<< orphan*/  PKTSCHEDT_QFQ ; 
 int /*<<< orphan*/  PKTSCHEDT_TCQ ; 
 int /*<<< orphan*/  QP_MBUF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ifclassq_sched_fq_codel ; 
 int FUNC2 (struct ifclassq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ifclassq *ifq)
{
	struct ifnet *ifp = ifq->ifcq_ifp;
	classq_pkt_type_t ptype = QP_MBUF;
	int err = 0;

	FUNC0(ifq);
	FUNC1(ifp->if_eflags & IFEF_TXSTART);

	switch (ifp->if_output_sched_model) {
	case IFNET_SCHED_MODEL_DRIVER_MANAGED:
		if (ifclassq_sched_fq_codel != 0) {
			err = FUNC2(ifq, PKTSCHEDT_FQ_CODEL,
			    ifq->ifcq_sflags, ptype);
		} else {
			err = FUNC2(ifq, PKTSCHEDT_TCQ,
			    ifq->ifcq_sflags, ptype);
		}
		break;

	case IFNET_SCHED_MODEL_NORMAL:
		if (ifclassq_sched_fq_codel != 0) {
			err = FUNC2(ifq, PKTSCHEDT_FQ_CODEL,
			    ifq->ifcq_sflags, ptype);
		} else {
			err = FUNC2(ifq, PKTSCHEDT_QFQ,
			    ifq->ifcq_sflags, ptype);
		}
		break;
	case IFNET_SCHED_MODEL_FQ_CODEL:
		err = FUNC2(ifq, PKTSCHEDT_FQ_CODEL,
		    ifq->ifcq_sflags, ptype);
		break;
	default:
		FUNC1(0);
		/* NOTREACHED */
	}

	return (err);
}