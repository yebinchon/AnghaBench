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
typedef  int /*<<< orphan*/  tmp ;
struct socket {int so_state; } ;
struct sockaddr_in6 {int sin6_len; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct inpcb {int /*<<< orphan*/  in6p_faddr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENOTCONN ; 
 int EPROTOTYPE ; 
 int SS_ISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (struct inpcb*) ; 
 int FUNC5 (struct mbuf*,struct socket*,struct sockaddr_in6*,struct mbuf*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct inpcb* FUNC7 (struct socket*) ; 

__attribute__((used)) static int
FUNC8(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct proc *p)
{
#pragma unused(flags, p)
	struct inpcb *inp = FUNC7(so);
	struct sockaddr_in6 tmp;
	struct sockaddr_in6 *dst = (struct sockaddr_in6 *)(void *)nam;
	int error = 0;

	if (inp == NULL
#if NECP
		|| (necp_socket_should_use_flow_divert(inp))
#endif /* NECP */
		) {
		if (inp == NULL)
			error = EINVAL;
		else
			error = EPROTOTYPE;
		goto bad;
	}

	/* always copy sockaddr to avoid overwrites */
	if (so->so_state & SS_ISCONNECTED) {
		if (nam != NULL) {
			error = EISCONN;
			goto bad;
		}
		/* XXX */
		FUNC2(&tmp, sizeof(tmp));
		tmp.sin6_family = AF_INET6;
		tmp.sin6_len = sizeof(struct sockaddr_in6);
		FUNC1(&inp->in6p_faddr, &tmp.sin6_addr,
		      sizeof(struct in6_addr));
		dst = &tmp;
	} else {
		if (nam == NULL) {
			error = ENOTCONN;
			goto bad;
		}
		tmp = *(struct sockaddr_in6 *)(void *)nam;
		dst = &tmp;
	}
#if ENABLE_DEFAULT_SCOPE
	if (dst->sin6_scope_id == 0) {	/* not change if specified  */
		dst->sin6_scope_id = scope6_addr2default(&dst->sin6_addr);
	}
#endif
	return (FUNC5(m, so, dst, control, 1));

bad:
	FUNC0(error != 0);

	if (m != NULL)
		FUNC3(m);
	if (control != NULL)
		FUNC3(control);

	return (error);
}