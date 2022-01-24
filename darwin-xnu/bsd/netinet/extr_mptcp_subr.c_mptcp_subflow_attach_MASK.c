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
struct tcpcb {struct mptsub* t_mpsub; int /*<<< orphan*/  t_mptcb; } ;
struct socket {int /*<<< orphan*/  so_usecount; int /*<<< orphan*/  so_flags; } ;
struct mptsub {struct socket* mpts_socket; struct mptses* mpts_mpte; int /*<<< orphan*/  mpts_flags; } ;
struct mptses {int /*<<< orphan*/  mpte_numflows; int /*<<< orphan*/  mpte_subflows; int /*<<< orphan*/  mpte_mptcb; TYPE_1__* mpte_mppcb; } ;
struct TYPE_2__ {struct socket* mpp_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPTSF_ATTACHED ; 
 int /*<<< orphan*/  SOF_MP_SUBFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mptsub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mptsub*) ; 
 int /*<<< orphan*/  mpts_entry ; 
 struct tcpcb* FUNC3 (struct socket*) ; 

__attribute__((used)) static void
FUNC4(struct mptses *mpte, struct mptsub *mpts, struct socket *so)
{
	struct socket *mp_so = mpte->mpte_mppcb->mpp_socket;
	struct tcpcb *tp = FUNC3(so);

	/*
	 * From this moment on, the subflow is linked to the MPTCP-connection.
	 * Locking,... happens now at the MPTCP-layer
	 */
	tp->t_mptcb = mpte->mpte_mptcb;
	so->so_flags |= SOF_MP_SUBFLOW;
	mp_so->so_usecount++;

	/*
	 * Insert the subflow into the list, and associate the MPTCP PCB
	 * as well as the the subflow socket.  From this point on, removing
	 * the subflow needs to be done via mptcp_subflow_del().
	 */
	FUNC0(&mpte->mpte_subflows, mpts, mpts_entry);
	mpte->mpte_numflows++;

	FUNC1(&mpts->mpts_flags, MPTSF_ATTACHED);
	mpts->mpts_mpte = mpte;
	mpts->mpts_socket = so;
	tp->t_mpsub = mpts;
	FUNC2(mpts);	/* for being in MPTCP subflow list */
	FUNC2(mpts);	/* for subflow socket */
}