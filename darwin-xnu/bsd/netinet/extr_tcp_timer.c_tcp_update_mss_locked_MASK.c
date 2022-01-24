#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcpcb {scalar_t__ t_state; int t_flags; } ;
struct socket {int dummy; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int /*<<< orphan*/ * if_link_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 scalar_t__ TCPS_CLOSE_WAIT ; 
 int TF_BLACKHOLE ; 
 struct tcpcb* FUNC1 (struct inpcb*) ; 
 struct inpcb* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*,struct ifnet*) ; 

void
FUNC4(struct socket *so, struct ifnet *ifp)
{
	struct inpcb *inp = FUNC2(so);
	struct tcpcb *tp = FUNC1(inp);

	if (ifp == NULL && (ifp = inp->inp_last_outifp) == NULL)
		return;

	if (!FUNC0(ifp)) {
		/*
		 * This optimization is implemented for cellular
		 * networks only
		 */
		return;
	}
	if ( tp->t_state <= TCPS_CLOSE_WAIT) {
		/*
		 * If the connection is currently doing or has done PMTU
		 * blackhole detection, do not change the MSS
		 */
		if (tp->t_flags & TF_BLACKHOLE)
			return;
		if (ifp->if_link_status == NULL)
			return;
		FUNC3(tp, ifp);
	}
}