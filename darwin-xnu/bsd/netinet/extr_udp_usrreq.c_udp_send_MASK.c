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
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 scalar_t__ FUNC2 (struct inpcb*) ; 
 struct inpcb* FUNC3 (struct socket*) ; 
 int FUNC4 (struct inpcb*,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ; 

int
FUNC5(struct socket *so, int flags, struct mbuf *m,
    struct sockaddr *addr, struct mbuf *control, struct proc *p)
{
#ifndef FLOW_DIVERT
#pragma unused(flags)
#endif /* !(FLOW_DIVERT) */
	struct inpcb *inp;

	inp = FUNC3(so);
	if (inp == NULL) {
		if (m != NULL)
			FUNC1(m);
		if (control != NULL)
			FUNC1(control);
		return (EINVAL);
	}

#if NECP
#if FLOW_DIVERT
	if (necp_socket_should_use_flow_divert(inp)) {
		/* Implicit connect */
		return (flow_divert_implicit_data_out(so, flags, m, addr,
		    control, p));
	}
#endif /* FLOW_DIVERT */
#endif /* NECP */

	return (FUNC4(inp, m, addr, control, p));
}