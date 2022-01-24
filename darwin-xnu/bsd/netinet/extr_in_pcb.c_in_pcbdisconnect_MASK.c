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
struct socket {int so_flags; int so_state; int /*<<< orphan*/  so_state_change_cnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct inpcb {TYPE_2__* inp_pcbinfo; scalar_t__ inp_fport; TYPE_1__ inp_faddr; struct socket* inp_socket; } ;
struct TYPE_4__ {int /*<<< orphan*/  ipi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ FUNC0 (struct socket*) ; 
 int SOF_MP_SUBFLOW ; 
 int SS_NOFDREF ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ nstat_collect ; 
 int /*<<< orphan*/  FUNC6 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct inpcb *inp)
{
	struct socket *so = inp->inp_socket;

	if (nstat_collect && FUNC0(so) == IPPROTO_UDP)
		FUNC6(inp);

	inp->inp_faddr.s_addr = INADDR_ANY;
	inp->inp_fport = 0;

#if CONTENT_FILTER
	if (so)
		so->so_state_change_cnt++;
#endif

	if (!FUNC5(inp->inp_pcbinfo->ipi_lock)) {
		/* lock inversion issue, mostly with udp multicast packets */
		FUNC8(so, 0);
		FUNC4(inp->inp_pcbinfo->ipi_lock);
		FUNC7(so, 0);
	}

	FUNC2(inp);
	FUNC3(inp->inp_pcbinfo->ipi_lock);
	/*
	 * A multipath subflow socket would have its SS_NOFDREF set by default,
	 * so check for SOF_MP_SUBFLOW socket flag before detaching the PCB;
	 * when the socket is closed for real, SOF_MP_SUBFLOW would be cleared.
	 */
	if (!(so->so_flags & SOF_MP_SUBFLOW) && (so->so_state & SS_NOFDREF))
		FUNC1(inp);
}