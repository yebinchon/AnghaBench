#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct TYPE_16__ {scalar_t__ pkt_flags; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct ifclassq {struct ifnet* ifcq_ifp; } ;
struct TYPE_18__ {scalar_t__ pktsched_ptype; } ;
typedef  TYPE_3__ pktsched_pkt_t ;
typedef  TYPE_4__* mbuf_t ;
struct TYPE_20__ {scalar_t__ fq_deficit; int /*<<< orphan*/  fq_mbufq; } ;
typedef  TYPE_5__ fq_t ;
struct TYPE_21__ {struct ifclassq* fqs_ifq; } ;
typedef  TYPE_6__ fq_if_t ;
struct TYPE_17__ {int /*<<< orphan*/  fcl_dequeue_bytes; int /*<<< orphan*/  fcl_dequeue; } ;
struct TYPE_22__ {TYPE_2__ fcl_stat; } ;
typedef  TYPE_7__ fq_if_classq_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_19__ {int /*<<< orphan*/ * m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ QP_MBUF ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct mbuf* FUNC3 (TYPE_6__*,TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*,struct ifnet*,struct mbuf*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static boolean_t
FUNC6(fq_if_t *fqs, fq_if_classq_t *fq_cl, fq_t *fq,
    u_int32_t byte_limit, u_int32_t pkt_limit, void **top, void **last,
    u_int32_t *byte_cnt, u_int32_t *pkt_cnt, boolean_t *qempty,
    u_int32_t pflags)
{
	struct mbuf *m;
	u_int32_t plen;
	pktsched_pkt_t pkt;
	boolean_t limit_reached = FALSE;
	struct ifclassq *ifq = fqs->fqs_ifq;
	struct ifnet *ifp = ifq->ifcq_ifp;

	while (fq->fq_deficit > 0 && limit_reached == FALSE &&
	    !FUNC1(&fq->fq_mbufq)) {

		FUNC2(&pkt);
		m = FUNC3(fqs, fq, &pkt);
		FUNC0(pkt.pktsched_ptype == QP_MBUF);

		plen = FUNC5(&pkt);
		fq->fq_deficit -= plen;
		m->m_pkthdr.pkt_flags |= pflags;

		if (*top == NULL) {
			*top = m;
		} else {
			FUNC0(*last != NULL);
			FUNC0((*(struct mbuf **)last)->m_nextpkt == NULL);
			(*(struct mbuf **)last)->m_nextpkt = m;
		}
		*last = m;
		(*(mbuf_t *)last)->m_nextpkt = NULL;
		fq_cl->fcl_stat.fcl_dequeue++;
		fq_cl->fcl_stat.fcl_dequeue_bytes += plen;
		*pkt_cnt += 1;
		*byte_cnt += plen;

		FUNC4(ifq, ifp, m, QP_MBUF);

		/* Check if the limit is reached */
		if (*pkt_cnt >= pkt_limit || *byte_cnt >= byte_limit)
			limit_reached = TRUE;
	}

	*qempty = FUNC1(&fq->fq_mbufq);
	return (limit_reached);
}