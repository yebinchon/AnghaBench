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
struct mptses {struct mbuf* mpte_reinjectq; struct mptcb* mpte_mptcb; } ;
struct mptcb {int /*<<< orphan*/  mpt_snduna; } ;
struct TYPE_2__ {scalar_t__ mp_rlen; scalar_t__ mp_dsn; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mptses*) ; 

void
FUNC4(struct mptses *mpte)
{
	struct mptcb *mp_tp = mpte->mpte_mptcb;

	FUNC3(mpte);

	while (mpte->mpte_reinjectq) {
		struct mbuf *m = mpte->mpte_reinjectq;

		if (FUNC0(m->m_pkthdr.mp_dsn, mp_tp->mpt_snduna) ||
		    FUNC1(m->m_pkthdr.mp_dsn + m->m_pkthdr.mp_rlen, mp_tp->mpt_snduna))
			break;

		mpte->mpte_reinjectq = m->m_nextpkt;
		m->m_nextpkt = NULL;
		FUNC2(m);
	}
}