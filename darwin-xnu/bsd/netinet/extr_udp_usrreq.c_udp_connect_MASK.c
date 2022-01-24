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
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {scalar_t__ inp_flowhash; int /*<<< orphan*/  necp_client_uuid; TYPE_1__ inp_faddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  nas_socket_inet_dgram_connected; } ;

/* Variables and functions */
 int EINVAL ; 
 int EISCONN ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SOF1_CONNECT_COUNTED ; 
 int FUNC1 (struct socket*,struct sockaddr*,struct proc*) ; 
 int FUNC2 (struct socket*,scalar_t__) ; 
 int FUNC3 (struct inpcb*,struct sockaddr*,struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inpcb*) ; 
 scalar_t__ FUNC6 (struct inpcb*) ; 
 scalar_t__ FUNC7 (struct inpcb*) ; 
 TYPE_2__ net_api_stats ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 
 struct inpcb* FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(struct socket *so, struct sockaddr *nam, struct proc *p)
{
	struct inpcb *inp;
	int error;

	inp = FUNC11(so);
	if (inp == NULL)
		return (EINVAL);
	if (inp->inp_faddr.s_addr != INADDR_ANY)
		return (EISCONN);

	if (!(so->so_flags1 & SOF1_CONNECT_COUNTED)) {
		so->so_flags1 |= SOF1_CONNECT_COUNTED;
		FUNC0(net_api_stats.nas_socket_inet_dgram_connected);
	}

#if NECP
#if FLOW_DIVERT
	if (necp_socket_should_use_flow_divert(inp)) {
		uint32_t fd_ctl_unit =
		    necp_socket_get_flow_divert_control_unit(inp);
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
#endif /* FLOW_DIVERT */
#endif /* NECP */

	error = FUNC3(inp, nam, p, IFSCOPE_NONE, NULL);
	if (error == 0) {
#if NECP
		/* Update NECP client with connected five-tuple */
		if (!uuid_is_null(inp->necp_client_uuid)) {
			socket_unlock(so, 0);
			necp_client_assign_from_socket(so->last_pid, inp->necp_client_uuid, inp);
			socket_lock(so, 0);
		}
#endif /* NECP */

		FUNC10(so);
		if (inp->inp_flowhash == 0)
			inp->inp_flowhash = FUNC4(inp);
	}
	return (error);
}