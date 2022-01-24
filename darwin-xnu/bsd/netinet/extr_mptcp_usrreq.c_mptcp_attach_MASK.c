#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; scalar_t__ sb_preconn_hiwat; int sb_flags; } ;
struct socket {TYPE_2__ so_rcv; TYPE_1__ so_snd; } ;
struct proc {int dummy; } ;
struct mptses {struct mptcb* mpte_mptcb; } ;
struct mptcb {int dummy; } ;
struct mppcb {scalar_t__ mpp_pcbe; } ;

/* Variables and functions */
 int SB_AUTOSIZE ; 
 int SB_NOCOMPRESS ; 
 int SB_USRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct socket*,int /*<<< orphan*/ *) ; 
 struct mppcb* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  mtcbinfo ; 
 int FUNC3 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  tcp_recvspace ; 
 int /*<<< orphan*/  tcp_sendspace ; 

__attribute__((used)) static int
FUNC5(struct socket *mp_so, struct proc *p)
{
#pragma unused(p)
	struct mptses *mpte = NULL;
	struct mptcb *mp_tp = NULL;
	struct mppcb *mpp = NULL;
	int error = 0;

	if (mp_so->so_snd.sb_hiwat == 0 || mp_so->so_rcv.sb_hiwat == 0) {
		error = FUNC3(mp_so, tcp_sendspace, tcp_recvspace);
		if (error != 0)
			goto out;
	}

	if (mp_so->so_snd.sb_preconn_hiwat == 0) {
		FUNC4(mp_so, 2048);
	}

	if ((mp_so->so_rcv.sb_flags & SB_USRSIZE) == 0)
		mp_so->so_rcv.sb_flags |= SB_AUTOSIZE;
	if ((mp_so->so_snd.sb_flags & SB_USRSIZE) == 0)
		mp_so->so_snd.sb_flags |= SB_AUTOSIZE;

	/*
	 * MPTCP socket buffers cannot be compressed, due to the
	 * fact that each mbuf chained via m_next is a M_PKTHDR
	 * which carries some MPTCP metadata.
	 */
	mp_so->so_snd.sb_flags |= SB_NOCOMPRESS;
	mp_so->so_rcv.sb_flags |= SB_NOCOMPRESS;

	if ((error = FUNC1(mp_so, &mtcbinfo)) != 0) {
		goto out;
	}

	mpp = FUNC2(mp_so);
	FUNC0(mpp != NULL);
	mpte = (struct mptses *)mpp->mpp_pcbe;
	FUNC0(mpte != NULL);
	mp_tp = mpte->mpte_mptcb;
	FUNC0(mp_tp != NULL);
out:
	return (error);
}