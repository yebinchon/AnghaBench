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
struct mptcb {int /*<<< orphan*/  mpt_sndmax; int /*<<< orphan*/  mpt_mpte; } ;
struct mppcb {int dummy; } ;
struct mpp_mtp {struct mptcb mtcb; } ;
struct TYPE_2__ {int pkt_flags; scalar_t__ mp_rlen; int /*<<< orphan*/  mp_dsn; } ;
struct mbuf {int m_flags; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int M_PKTHDR ; 
 int PKTF_MPSO ; 
 int PKTF_MPTCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mptcb*) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct mppcb *mpp, struct mbuf *m)
{
	struct mptcb *mp_tp;

	if (m == NULL)
		return;

	FUNC1(mp_tp = &((struct mpp_mtp *)mpp)->mtcb);
	FUNC3(mp_tp->mpt_mpte);

	while (m) {
		FUNC0(m->m_flags & M_PKTHDR);
		m->m_pkthdr.pkt_flags |= (PKTF_MPTCP | PKTF_MPSO);
		m->m_pkthdr.mp_dsn = mp_tp->mpt_sndmax;
		m->m_pkthdr.mp_rlen = FUNC2(m);
		mp_tp->mpt_sndmax += FUNC2(m);
		m = m->m_next;
	}
}