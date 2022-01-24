#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_flags1; TYPE_1__* so_proto; int /*<<< orphan*/  so_state_change_cnt; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {scalar_t__ inp_lport; scalar_t__ inp_fport; TYPE_3__* inp_pcbinfo; int /*<<< orphan*/  in6p_faddr; int /*<<< orphan*/  in6p_flags; struct ifnet* in6p_last_outifp; struct in6_addr in6p_laddr; struct socket* inp_socket; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ipi_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  nas_socket_inet_dgram_dns; } ;
struct TYPE_4__ {scalar_t__ pr_protocol; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INP_IN6ADDR_ANY ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int SOF1_DNS_COUNTED ; 
 int SO_FILT_HINT_IFDENIED ; 
 int SO_FILT_HINT_LOCKED ; 
 int /*<<< orphan*/  WNT_RELEASE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct inpcb*,int /*<<< orphan*/ *,struct proc*) ; 
 int FUNC6 (struct inpcb*,struct sockaddr*,struct in6_addr*,struct ifnet**) ; 
 struct inpcb* FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,struct in6_addr*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inpcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inpcb*) ; 
 scalar_t__ FUNC10 (struct inpcb*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__ net_api_stats ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  FUNC14 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*,int) ; 

int
FUNC18(struct inpcb *inp, struct sockaddr *nam, struct proc *p)
{
	struct in6_addr addr6;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)(void *)nam;
	struct inpcb *pcb;
	int error = 0;
	struct ifnet *outif = NULL;
	struct socket *so = inp->inp_socket;

#if CONTENT_FILTER
	if (so)
		so->so_state_change_cnt++;
#endif

	if (so->so_proto->pr_protocol == IPPROTO_UDP &&
	    sin6->sin6_port == FUNC3(53) && !(so->so_flags1 & SOF1_DNS_COUNTED)) {
	    	so->so_flags1 |= SOF1_DNS_COUNTED;
		FUNC1(net_api_stats.nas_socket_inet_dgram_dns);
	}

	/*
	 * Call inner routine, to assign local interface address.
	 * in6_pcbladdr() may automatically fill in sin6_scope_id.
	 *
	 * in6_pcbladdr() might return an ifp with its reference held
	 * even in the error case, so make sure that it's released
	 * whenever it's non-NULL.
	 */
	if ((error = FUNC6(inp, nam, &addr6, &outif)) != 0) {
		if (outif != NULL && FUNC10(inp, outif)) 
			FUNC17(so,
			    (SO_FILT_HINT_LOCKED | SO_FILT_HINT_IFDENIED));
		goto done;
	}
	FUNC16(so, 0);
	pcb = FUNC7(inp->inp_pcbinfo, &sin6->sin6_addr,
	    sin6->sin6_port, FUNC0(&inp->in6p_laddr) ?
	    &addr6 : &inp->in6p_laddr, inp->inp_lport, 0, NULL);
	FUNC15(so, 0);
	if (pcb != NULL) {
		FUNC8(pcb, WNT_RELEASE, pcb == inp ? 1 : 0);
		error = EADDRINUSE;
		goto done;
	}
	if (FUNC0(&inp->in6p_laddr)) {
		if (inp->inp_lport == 0) {
			error = FUNC5(inp, NULL, p);
			if (error)
				goto done;
		}
		inp->in6p_laddr = addr6;
		inp->in6p_last_outifp = outif;	/* no reference needed */
		inp->in6p_flags |= INP_IN6ADDR_ANY;
	}
	if (!FUNC13(inp->inp_pcbinfo->ipi_lock)) {
		/* lock inversion issue, mostly with udp multicast packets */
		FUNC16(so, 0);
		FUNC12(inp->inp_pcbinfo->ipi_lock);
		FUNC15(so, 0);
	}
	inp->in6p_faddr = sin6->sin6_addr;
	inp->inp_fport = sin6->sin6_port;
	if (nstat_collect && FUNC2(so) == IPPROTO_UDP)
		FUNC14(inp);
	FUNC9(inp);
	FUNC11(inp->inp_pcbinfo->ipi_lock);

done:
	if (outif != NULL)
		FUNC4(outif);

	return (error);
}