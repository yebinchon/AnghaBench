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
struct socket {int /*<<< orphan*/  so_state; } ;
struct pr_usrreqs {int (* pru_disconnect ) (struct socket*) ;} ;
struct inpcb {int inp_vflag; int /*<<< orphan*/ * in6p_last_outifp; int /*<<< orphan*/  in6p_laddr; int /*<<< orphan*/  in6p_faddr; } ;
struct TYPE_2__ {struct pr_usrreqs* pr_usrreqs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int EPROTOTYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int INP_IPV4 ; 
 size_t IPPROTO_UDP ; 
 int /*<<< orphan*/  SS_ISCONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 TYPE_1__** ip_protox ; 
 scalar_t__ FUNC3 (struct inpcb*) ; 
 struct inpcb* FUNC4 (struct socket*) ; 
 int FUNC5 (struct socket*) ; 

__attribute__((used)) static int
FUNC6(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC4(so);
	if (inp == NULL
#if NECP
		|| (necp_socket_should_use_flow_divert(inp))
#endif /* NECP */
		)
		return (inp == NULL ? EINVAL : EPROTOTYPE);

	if (inp->inp_vflag & INP_IPV4) {
		struct pr_usrreqs *pru;

		pru = ip_protox[IPPROTO_UDP]->pr_usrreqs;
		return ((*pru->pru_disconnect)(so));
	}

	if (FUNC0(&inp->in6p_faddr))
		return (ENOTCONN);

	FUNC1(inp);

	/* reset flow-controlled state, just in case */
	FUNC2(inp);

	inp->in6p_laddr = in6addr_any;
	inp->in6p_last_outifp = NULL;

	so->so_state &= ~SS_ISCONNECTED;		/* XXX */
	return (0);
}