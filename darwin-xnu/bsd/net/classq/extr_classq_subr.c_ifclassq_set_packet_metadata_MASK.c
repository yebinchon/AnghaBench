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
struct TYPE_2__ {int /*<<< orphan*/  bufstatus_sndbuf; int /*<<< orphan*/  bufstatus_if; int /*<<< orphan*/  pkt_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_sndbyte_unsent; } ;
struct ifclassq {int dummy; } ;
typedef  int classq_pkt_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  PKTF_VALID_UNSENT_DATA ; 
#define  QP_MBUF 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

inline void
FUNC3(struct ifclassq *ifq, struct ifnet *ifp,
    void *p, classq_pkt_type_t ptype)
{
	if (!FUNC1(ifp))
		return;

	switch (ptype) {
	case QP_MBUF: {
		struct mbuf *m = p;
		m->m_pkthdr.pkt_flags |= PKTF_VALID_UNSENT_DATA;
		m->m_pkthdr.bufstatus_if = FUNC0(ifq);
		m->m_pkthdr.bufstatus_sndbuf = ifp->if_sndbyte_unsent;
		break;
	}


	default:
		FUNC2(0);
		/* NOTREACHED */
	}
}