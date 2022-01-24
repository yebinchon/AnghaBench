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
struct socket {int so_flags; int /*<<< orphan*/  so_state_change_cnt; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct inpcb {scalar_t__ inp_lport; TYPE_1__* inp_pcbinfo; int /*<<< orphan*/  inp_fport; int /*<<< orphan*/  inp_faddr; int /*<<< orphan*/  inp_flags; struct ifnet* inp_last_outifp; struct in_addr inp_laddr; struct socket* inp_socket; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipi_lock; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int ECONNREFUSED ; 
 int EINVAL ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  INP_INADDR_ANY ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ FUNC0 (struct socket*) ; 
 int SOF_ABORTED ; 
 int /*<<< orphan*/  WNT_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct inpcb*,int /*<<< orphan*/ *,struct proc*) ; 
 int FUNC3 (struct inpcb*,struct sockaddr*,struct in_addr*,unsigned int,struct ifnet**,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_addr,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  FUNC9 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,int /*<<< orphan*/ ) ; 

int
FUNC12(struct inpcb *inp, struct sockaddr *nam, struct proc *p,
    unsigned int ifscope, struct ifnet **outif)
{
	struct in_addr laddr;
	struct sockaddr_in *sin = (struct sockaddr_in *)(void *)nam;
	struct inpcb *pcb;
	int error;
	struct socket *so = inp->inp_socket;

#if CONTENT_FILTER
	if (so)
		so->so_state_change_cnt++;
#endif

	/*
	 *   Call inner routine, to assign local interface address.
	 */
	if ((error = FUNC3(inp, nam, &laddr, ifscope, outif, 0)) != 0)
		return (error);

	FUNC11(so, 0);
	pcb = FUNC4(inp->inp_pcbinfo, sin->sin_addr, sin->sin_port,
	    inp->inp_laddr.s_addr ? inp->inp_laddr : laddr,
	    inp->inp_lport, 0, NULL);
	FUNC10(so, 0);

	/*
	 * Check if the socket is still in a valid state. When we unlock this
	 * embryonic socket, it can get aborted if another thread is closing
	 * the listener (radar 7947600).
	 */
	if ((so->so_flags & SOF_ABORTED) != 0)
		return (ECONNREFUSED);

	if (pcb != NULL) {
		FUNC1(pcb, WNT_RELEASE, pcb == inp ? 1 : 0);
		return (EADDRINUSE);
	}
	if (inp->inp_laddr.s_addr == INADDR_ANY) {
		if (inp->inp_lport == 0) {
			error = FUNC2(inp, NULL, p);
			if (error)
				return (error);
		}
		if (!FUNC8(inp->inp_pcbinfo->ipi_lock)) {
			/*
			 * Lock inversion issue, mostly with udp
			 * multicast packets.
			 */
			FUNC11(so, 0);
			FUNC7(inp->inp_pcbinfo->ipi_lock);
			FUNC10(so, 0);
		}
		inp->inp_laddr = laddr;
		/* no reference needed */
		inp->inp_last_outifp = (outif != NULL) ? *outif : NULL;
		inp->inp_flags |= INP_INADDR_ANY;
	} else {
		/*
		 * Usage of IP_PKTINFO, without local port already
		 * speficified will cause kernel to panic,
		 * see rdar://problem/18508185.
		 * For now returning error to avoid a kernel panic
		 * This routines can be refactored and handle this better
		 * in future.
		 */
		if (inp->inp_lport == 0)
			return (EINVAL);
		if (!FUNC8(inp->inp_pcbinfo->ipi_lock)) {
			/*
			 * Lock inversion issue, mostly with udp
			 * multicast packets.
			 */
			FUNC11(so, 0);
			FUNC7(inp->inp_pcbinfo->ipi_lock);
			FUNC10(so, 0);
		}
	}
	inp->inp_faddr = sin->sin_addr;
	inp->inp_fport = sin->sin_port;
	if (nstat_collect && FUNC0(so) == IPPROTO_UDP)
		FUNC9(inp);
	FUNC5(inp);
	FUNC6(inp->inp_pcbinfo->ipi_lock);
	return (0);
}