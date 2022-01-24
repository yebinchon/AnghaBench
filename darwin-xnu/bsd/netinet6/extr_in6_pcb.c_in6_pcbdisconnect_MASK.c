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
struct socket {int so_flags; int so_state; int /*<<< orphan*/  so_state_change_cnt; } ;
struct inpcb {TYPE_1__* inp_pcbinfo; int /*<<< orphan*/  inp_flow; scalar_t__ inp_fport; int /*<<< orphan*/  in6p_faddr; struct socket* inp_socket; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  ipi_lock; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  IPV6_FLOWLABEL_MASK ; 
 scalar_t__ FUNC0 (struct socket*) ; 
 int SOF_MP_SUBFLOW ; 
 int SS_NOFDREF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  FUNC7 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC10(struct inpcb *inp)
{
	struct socket *so = inp->inp_socket;

#if CONTENT_FILTER
	if (so)
		so->so_state_change_cnt++;
#endif

	if (!FUNC6(inp->inp_pcbinfo->ipi_lock)) {
		/* lock inversion issue, mostly with udp multicast packets */
		FUNC9(so, 0);
		FUNC5(inp->inp_pcbinfo->ipi_lock);
		FUNC8(so, 0);
	}
	if (nstat_collect && FUNC0(so) == IPPROTO_UDP)
		FUNC7(inp);
	FUNC1((caddr_t)&inp->in6p_faddr, sizeof (inp->in6p_faddr));
	inp->inp_fport = 0;
	/* clear flowinfo - RFC 6437 */
	inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
	FUNC3(inp);
	FUNC4(inp->inp_pcbinfo->ipi_lock);
	/*
	 * A multipath subflow socket would have its SS_NOFDREF set by default,
	 * so check for SOF_MP_SUBFLOW socket flag before detaching the PCB;
	 * when the socket is closed for real, SOF_MP_SUBFLOW would be cleared.
	 */
	if (!(so->so_flags & SOF_MP_SUBFLOW) && (so->so_state & SS_NOFDREF))
		FUNC2(inp);
}