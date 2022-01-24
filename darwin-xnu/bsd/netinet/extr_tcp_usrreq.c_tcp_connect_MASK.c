#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct tcpcb {scalar_t__ t_state; int t_flags; int /*<<< orphan*/  iss; int /*<<< orphan*/ * t_timer; scalar_t__ t_starttime; struct inpcb* t_inpcb; } ;
struct socket {int dummy; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_4__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ro_rt; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct inpcb {scalar_t__ inp_lport; scalar_t__ inp_fport; scalar_t__ inp_flowhash; TYPE_1__ inp_route; TYPE_3__* inp_pcbinfo; TYPE_4__ inp_faddr; int /*<<< orphan*/  inp_flags; struct ifnet* inp_last_outifp; struct in_addr inp_laddr; struct socket* inp_socket; } ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ipi_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  tcps_connattempt; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  INP_INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ TCPS_SYN_SENT ; 
 scalar_t__ TCPS_TIME_WAIT ; 
 size_t TCPT_KEEP ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 
 int TF_RCVD_CC ; 
 scalar_t__ FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  WNT_RELEASE ; 
 scalar_t__ WNT_STOPUSING ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 scalar_t__ FUNC4 (struct inpcb*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct inpcb*,int /*<<< orphan*/ *,struct proc*) ; 
 int FUNC6 (struct inpcb*,struct sockaddr*,struct in_addr*,int /*<<< orphan*/ ,struct ifnet**,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC7 (TYPE_3__*,TYPE_4__,scalar_t__,struct in_addr,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inpcb*) ; 
 scalar_t__ FUNC9 (struct inpcb*) ; 
 struct tcpcb* FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct socket*) ; 
 struct tcpcb* FUNC19 (struct tcpcb*) ; 
 int tcp_msl ; 
 int /*<<< orphan*/  FUNC20 (struct tcpcb*) ; 
 scalar_t__ tcp_now ; 
 int /*<<< orphan*/  FUNC21 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC22 (struct tcpcb*,struct socket*,struct ifnet*) ; 
 TYPE_2__ tcpstat ; 

__attribute__((used)) static int
FUNC23(struct tcpcb *tp, struct sockaddr *nam, struct proc *p)
{
	struct inpcb *inp = tp->t_inpcb, *oinp;
	struct socket *so = inp->inp_socket;
	struct tcpcb *otp;
	struct sockaddr_in *sin = (struct sockaddr_in *)(void *)nam;
	struct in_addr laddr;
	int error = 0;
	struct ifnet *outif = NULL;

	if (inp->inp_lport == 0) {
		error = FUNC5(inp, NULL, p);
		if (error)
			goto done;
	}

	/*
	 * Cannot simply call in_pcbconnect, because there might be an
	 * earlier incarnation of this same connection still in
	 * TIME_WAIT state, creating an ADDRINUSE error.
	 */
	error = FUNC6(inp, nam, &laddr, IFSCOPE_NONE, &outif, 0);
	if (error)
		goto done;

	FUNC17(inp->inp_socket, 0);
	oinp = FUNC7(inp->inp_pcbinfo,
	    sin->sin_addr, sin->sin_port,
	    inp->inp_laddr.s_addr != INADDR_ANY ? inp->inp_laddr : laddr,
	    inp->inp_lport,  0, NULL);

	FUNC16(inp->inp_socket, 0);
	if (oinp) {
		if (oinp != inp) /* 4143933: avoid deadlock if inp == oinp */
			FUNC16(oinp->inp_socket, 1);
		if (FUNC4(oinp, WNT_RELEASE, 1) == WNT_STOPUSING) {
			if (oinp != inp)
				FUNC17(oinp->inp_socket, 1);
			goto skip_oinp;
		}

		if (oinp != inp && (otp = FUNC10(oinp)) != NULL &&
		    otp->t_state == TCPS_TIME_WAIT &&
		    ((int)(tcp_now - otp->t_starttime)) < tcp_msl &&
		    (otp->t_flags & TF_RCVD_CC)) {
			otp = FUNC19(otp);
		} else {
			FUNC15("tcp_connect: inp=0x%llx err=EADDRINUSE\n",
			    (uint64_t)FUNC2(inp));
			if (oinp != inp)
				FUNC17(oinp->inp_socket, 1);
			error = EADDRINUSE;
			goto done;
		}
		if (oinp != inp)
			FUNC17(oinp->inp_socket, 1);
	}
skip_oinp:
	if ((inp->inp_laddr.s_addr == INADDR_ANY ? laddr.s_addr :
	    inp->inp_laddr.s_addr) == sin->sin_addr.s_addr &&
	    inp->inp_lport == sin->sin_port) {
		error = EINVAL;
		goto done;
	}
	if (!FUNC13(inp->inp_pcbinfo->ipi_lock)) {
		/*lock inversion issue, mostly with udp multicast packets */
		FUNC17(inp->inp_socket, 0);
		FUNC12(inp->inp_pcbinfo->ipi_lock);
		FUNC16(inp->inp_socket, 0);
	}
	if (inp->inp_laddr.s_addr == INADDR_ANY) {
		inp->inp_laddr = laddr;
		/* no reference needed */
		inp->inp_last_outifp = outif;

		inp->inp_flags |= INP_INADDR_ANY;
	}
	inp->inp_faddr = sin->sin_addr;
	inp->inp_fport = sin->sin_port;
	FUNC8(inp);
	FUNC11(inp->inp_pcbinfo->ipi_lock);

	if (inp->inp_flowhash == 0)
		inp->inp_flowhash = FUNC9(inp);

	FUNC22(tp, so, outif);

	FUNC18(so);
	tcpstat.tcps_connattempt++;
	tp->t_state = TCPS_SYN_SENT;
	tp->t_timer[TCPT_KEEP] = FUNC0(tp, FUNC1(tp));
	tp->iss = FUNC20(tp);
	FUNC21(tp);
	if (nstat_collect)
		FUNC14(inp->inp_route.ro_rt);

done:
	if (outif != NULL)
		FUNC3(outif);

	return (error);
}