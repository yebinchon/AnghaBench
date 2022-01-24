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
typedef  scalar_t__ uint32_t ;
struct socket {int so_flags1; int /*<<< orphan*/  last_pid; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {int inp_flags; scalar_t__ inp_flowhash; int inp_flow; int in6p_flags; int /*<<< orphan*/  necp_client_uuid; int /*<<< orphan*/  inp_vflag; int /*<<< orphan*/  in6p_faddr; TYPE_1__ inp_faddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  nas_socket_inet6_dgram_connected; int /*<<< orphan*/  nas_socket_inet_dgram_connected; } ;

/* Variables and functions */
 int EINVAL ; 
 int EISCONN ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 int IN6P_AUTOFLOWLABEL ; 
 int IN6P_IPV6_V6ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INP_IPV4 ; 
 int /*<<< orphan*/  INP_IPV6 ; 
 int IPV6_FLOWLABEL_MASK ; 
 int SOF1_CONNECT_COUNTED ; 
 int FUNC3 (struct socket*,struct sockaddr*,struct proc*) ; 
 int FUNC4 (struct socket*,scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct inpcb*,struct sockaddr*,struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 int FUNC8 (struct inpcb*,struct sockaddr*,struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct inpcb*) ; 
 scalar_t__ ip6_mapped_addr_on ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inpcb*) ; 
 scalar_t__ FUNC11 (struct inpcb*) ; 
 int FUNC12 (struct inpcb*) ; 
 TYPE_2__ net_api_stats ; 
 int /*<<< orphan*/  FUNC13 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*) ; 
 struct inpcb* FUNC16 (struct socket*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(struct socket *so, struct sockaddr *nam, struct proc *p)
{
	struct inpcb *inp;
	int error;
#if defined(NECP) && defined(FLOW_DIVERT)
	int should_use_flow_divert = 0;
#endif /* defined(NECP) && defined(FLOW_DIVERT) */

	inp = FUNC16(so);
	if (inp == NULL)
		return (EINVAL);

#if defined(NECP) && defined(FLOW_DIVERT)
	should_use_flow_divert = necp_socket_should_use_flow_divert(inp);
#endif /* defined(NECP) && defined(FLOW_DIVERT) */

	if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
		struct sockaddr_in6 *sin6_p;

		sin6_p = (struct sockaddr_in6 *)(void *)nam;
		if (FUNC1(&sin6_p->sin6_addr)) {
			struct sockaddr_in sin;

			if (inp->inp_faddr.s_addr != INADDR_ANY)
				return (EISCONN);

			if (!(so->so_flags1 & SOF1_CONNECT_COUNTED)) {
				so->so_flags1 |= SOF1_CONNECT_COUNTED;
				FUNC2(net_api_stats.nas_socket_inet_dgram_connected);
			}

			FUNC7(&sin, sin6_p);
#if defined(NECP) && defined(FLOW_DIVERT)
			if (should_use_flow_divert) {
				goto do_flow_divert;
			}
#endif /* defined(NECP) && defined(FLOW_DIVERT) */
			error = FUNC8(inp, (struct sockaddr *)&sin,
			    p, IFSCOPE_NONE, NULL);
			if (error == 0) {
#if NECP
				/* Update NECP client with connected five-tuple */
				if (!uuid_is_null(inp->necp_client_uuid)) {
					socket_unlock(so, 0);
					necp_client_assign_from_socket(so->last_pid, inp->necp_client_uuid, inp);
					socket_lock(so, 0);
				}
#endif /* NECP */
				inp->inp_vflag |= INP_IPV4;
				inp->inp_vflag &= ~INP_IPV6;
				FUNC15(so);
			}
			return (error);
		}
	}

	if (!FUNC0(&inp->in6p_faddr))
		return (EISCONN);

	if (!(so->so_flags1 & SOF1_CONNECT_COUNTED)) {
		so->so_flags1 |= SOF1_CONNECT_COUNTED;
		FUNC2(net_api_stats.nas_socket_inet6_dgram_connected);
	}

#if defined(NECP) && defined(FLOW_DIVERT)
do_flow_divert:
	if (should_use_flow_divert) {
		uint32_t fd_ctl_unit = necp_socket_get_flow_divert_control_unit(inp);
		if (fd_ctl_unit > 0) {
			error = flow_divert_pcb_init(so, fd_ctl_unit);
			if (error == 0) {
				error = flow_divert_connect_out(so, nam, p);
			}
		} else {
			error = ENETDOWN;
		}
		return (error);
	}
#endif /* defined(NECP) && defined(FLOW_DIVERT) */

	error = FUNC6(inp, nam, p);
	if (error == 0) {
		/* should be non mapped addr */
		if (ip6_mapped_addr_on ||
		    (inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
			inp->inp_vflag &= ~INP_IPV4;
			inp->inp_vflag |= INP_IPV6;
		}
#if NECP
		/* Update NECP client with connected five-tuple */
		if (!uuid_is_null(inp->necp_client_uuid)) {
			socket_unlock(so, 0);
			necp_client_assign_from_socket(so->last_pid, inp->necp_client_uuid, inp);
			socket_lock(so, 0);
		}
#endif /* NECP */
		FUNC15(so);
		if (inp->inp_flowhash == 0)
			inp->inp_flowhash = FUNC9(inp);
		/* update flowinfo - RFC 6437 */
		if (inp->inp_flow == 0 &&
		    inp->in6p_flags & IN6P_AUTOFLOWLABEL) {
			inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
			inp->inp_flow |=
			    (FUNC5(inp->inp_flowhash) & IPV6_FLOWLABEL_MASK);
		}
	}
	return (error);
}