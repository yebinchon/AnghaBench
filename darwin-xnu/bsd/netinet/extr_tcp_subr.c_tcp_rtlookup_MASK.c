#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {int /*<<< orphan*/  t_flags; } ;
struct TYPE_13__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_7__ sin_addr; } ;
struct TYPE_10__ {int rmx_locks; } ;
struct rtentry {int rt_flags; TYPE_5__* rt_ifp; TYPE_4__* rt_gateway; TYPE_3__ rt_rmx; } ;
struct TYPE_8__ {int sa_len; int /*<<< orphan*/  sa_family; } ;
struct route {struct rtentry* ro_rt; TYPE_1__ ro_dst; } ;
struct inpcb {int inp_flags; TYPE_7__ inp_faddr; TYPE_5__* inp_last_outifp; int /*<<< orphan*/  inp_socket; TYPE_2__* inp_boundifp; struct route inp_route; } ;
struct TYPE_12__ {int if_hwassist; int if_eflags; int if_flags; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {unsigned int if_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ AF_LINK ; 
 int IFEF_2KCL ; 
 int IFF_LOOPBACK ; 
 int IFF_POINTOPOINT ; 
 int IFNET_MULTIPAGES ; 
 scalar_t__ INADDR_ANY ; 
 int INP_BOUND_IF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (struct route*) ; 
 scalar_t__ FUNC2 (struct route*) ; 
 int RTF_UP ; 
 int RTV_MTU ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  TF_LOCAL ; 
 int /*<<< orphan*/  TF_PMTUD ; 
 scalar_t__ FUNC6 (TYPE_7__) ; 
 struct tcpcb* FUNC7 (struct inpcb*) ; 
 int /*<<< orphan*/  path_mtu_discovery ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC8 (struct route*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tcpcb*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*,TYPE_5__*) ; 

struct rtentry *
FUNC13(struct inpcb *inp, unsigned int input_ifscope)
{
	struct route *ro;
	struct rtentry *rt;
	struct tcpcb *tp;

	FUNC0(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);

	ro = &inp->inp_route;
	if ((rt = ro->ro_rt) != NULL)
		FUNC3(rt);

	if (FUNC2(ro)) {
		if (rt != NULL) {
			FUNC5(rt);
			rt = NULL;
		}
		FUNC1(ro);
		/* No route yet, so try to acquire one */
		if (inp->inp_faddr.s_addr != INADDR_ANY) {
			unsigned int ifscope;

			ro->ro_dst.sa_family = AF_INET;
			ro->ro_dst.sa_len = sizeof(struct sockaddr_in);
			((struct sockaddr_in *)(void *)&ro->ro_dst)->sin_addr =
				inp->inp_faddr;

			/*
			 * If the socket was bound to an interface, then
			 * the bound-to-interface takes precedence over
			 * the inbound interface passed in by the caller
			 * (if we get here as part of the output path then
			 * input_ifscope is IFSCOPE_NONE).
			 */
			ifscope = (inp->inp_flags & INP_BOUND_IF) ?
			    inp->inp_boundifp->if_index : input_ifscope;

			FUNC8(ro, ifscope);
			if ((rt = ro->ro_rt) != NULL)
				FUNC3(rt);
		}
	}
	if (rt != NULL)
		FUNC4(rt);

	/*
	 * Update MTU discovery determination. Don't do it if:
	 *	1) it is disabled via the sysctl
	 *	2) the route isn't up
	 *	3) the MTU is locked (if it is, then discovery has been
	 *	   disabled)
	 */

	tp = FUNC7(inp);

	if (!path_mtu_discovery || ((rt != NULL) &&
	    (!(rt->rt_flags & RTF_UP) || (rt->rt_rmx.rmx_locks & RTV_MTU))))
		tp->t_flags &= ~TF_PMTUD;
	else
		tp->t_flags |= TF_PMTUD;

	if (rt != NULL && rt->rt_ifp != NULL) {
		FUNC10(inp->inp_socket,
		    (rt->rt_ifp->if_hwassist & IFNET_MULTIPAGES));
		FUNC12(tp, rt->rt_ifp);
		FUNC9(inp->inp_socket,
		    (rt->rt_ifp->if_eflags & IFEF_2KCL));
		FUNC11(tp, rt->rt_ifp);
		if (inp->inp_last_outifp == NULL) {
			inp->inp_last_outifp = rt->rt_ifp;

		}
	}

	/* Note if the peer is local */
	if (rt != NULL && !(rt->rt_ifp->if_flags & IFF_POINTOPOINT) &&
		(rt->rt_gateway->sa_family == AF_LINK ||
		rt->rt_ifp->if_flags & IFF_LOOPBACK ||
		FUNC6(inp->inp_faddr))) {
		tp->t_flags |= TF_LOCAL;
	}

	/*
	 * Caller needs to call RT_UNLOCK(rt).
	 */
	return (rt);
}