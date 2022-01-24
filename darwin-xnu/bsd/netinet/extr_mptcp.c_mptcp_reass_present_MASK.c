#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tseg_qent {scalar_t__ tqe_len; TYPE_3__* tqe_m; } ;
struct socket {int so_state; } ;
struct mptcb {scalar_t__ mpt_state; scalar_t__ mpt_rcvnxt; int mpt_flags; int /*<<< orphan*/  mpt_segq; int /*<<< orphan*/  mpt_reassqlen; } ;
struct TYPE_9__ {TYPE_1__* mpp_pcbe; } ;
struct TYPE_7__ {scalar_t__ mp_dsn; int pkt_flags; } ;
struct TYPE_8__ {TYPE_2__ m_pkthdr; } ;
struct TYPE_6__ {struct mptcb* mpte_mptcb; } ;

/* Variables and functions */
 struct tseg_qent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tseg_qent*,int /*<<< orphan*/ ) ; 
 int MPTCPF_REASS_INPROG ; 
 scalar_t__ MPTCPS_ESTABLISHED ; 
 int PKTF_MPTCP_DFIN ; 
 int SS_CANTRCVMORE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_4__* FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  tcp_reass_zone ; 
 int /*<<< orphan*/  tqe_q ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tseg_qent*) ; 

__attribute__((used)) static int
FUNC7(struct socket *mp_so)
{
	struct mptcb *mp_tp = FUNC3(mp_so)->mpp_pcbe->mpte_mptcb;
	struct tseg_qent *q;
	int dowakeup = 0;
	int flags = 0;

	/*
	 * Present data to user, advancing rcv_nxt through
	 * completed sequence space.
	 */
	if (mp_tp->mpt_state < MPTCPS_ESTABLISHED)
		return (flags);
	q = FUNC0(&mp_tp->mpt_segq);
	if (!q || q->tqe_m->m_pkthdr.mp_dsn != mp_tp->mpt_rcvnxt)
		return (flags);

	/*
	 * If there is already another thread doing reassembly for this
	 * connection, it is better to let it finish the job --
	 * (radar 16316196)
	 */
	if (mp_tp->mpt_flags & MPTCPF_REASS_INPROG)
		return (flags);

	mp_tp->mpt_flags |= MPTCPF_REASS_INPROG;

	do {
		mp_tp->mpt_rcvnxt += q->tqe_len;
		FUNC1(q, tqe_q);
		if (mp_so->so_state & SS_CANTRCVMORE) {
			FUNC2(q->tqe_m);
		} else {
			flags = !!(q->tqe_m->m_pkthdr.pkt_flags & PKTF_MPTCP_DFIN);
			if (FUNC4(mp_so, q->tqe_m, 0, 0))
				dowakeup = 1;
		}
		FUNC6(tcp_reass_zone, q);
		mp_tp->mpt_reassqlen--;
		q = FUNC0(&mp_tp->mpt_segq);
	} while (q && q->tqe_m->m_pkthdr.mp_dsn == mp_tp->mpt_rcvnxt);
	mp_tp->mpt_flags &= ~MPTCPF_REASS_INPROG;

	if (dowakeup)
		FUNC5(mp_so); /* done with socket lock held */
	return (flags);

}