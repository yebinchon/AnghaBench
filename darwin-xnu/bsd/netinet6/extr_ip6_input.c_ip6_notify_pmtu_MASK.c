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
typedef  int /*<<< orphan*/  u_int32_t ;
struct socket {int /*<<< orphan*/  so_rcv; TYPE_1__* so_proto; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct mbuf {int dummy; } ;
struct ip6_mtuinfo {struct sockaddr_in6 ip6m_addr; int /*<<< orphan*/  ip6m_mtu; } ;
struct inpcb {int inp_flags; int /*<<< orphan*/  in6p_faddr; struct socket* inp_socket; } ;
typedef  int /*<<< orphan*/  mtuctl ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {scalar_t__ pr_protocol; } ;

/* Variables and functions */
 int IN6P_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  IPV6_PATHMTU ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in6*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_mtuinfo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

void
FUNC10(struct inpcb *in6p, struct sockaddr_in6 *dst, u_int32_t *mtu)
{
	struct socket *so;
	struct mbuf *m_mtu;
	struct ip6_mtuinfo mtuctl;

	so =  in6p->inp_socket;

	if ((in6p->inp_flags & IN6P_MTU) == 0)
		return;

	if (mtu == NULL)
		return;

#ifdef DIAGNOSTIC
	if (so == NULL) {		/* I believe this is impossible */
		panic("ip6_notify_pmtu: socket is NULL");
		/* NOTREACHED */
	}
#endif

	if (FUNC1(&in6p->in6p_faddr) &&
	    (so->so_proto == NULL || so->so_proto->pr_protocol == IPPROTO_TCP))
		return;

	if (!FUNC1(&in6p->in6p_faddr) &&
	    !FUNC0(&in6p->in6p_faddr, &dst->sin6_addr))
		return;

	FUNC3(&mtuctl, sizeof (mtuctl));	/* zero-clear for safety */
	mtuctl.ip6m_mtu = *mtu;
	mtuctl.ip6m_addr = *dst;
	if (FUNC6(&mtuctl.ip6m_addr, TRUE))
		return;

	if ((m_mtu = FUNC8((caddr_t)&mtuctl, sizeof (mtuctl),
	    IPV6_PATHMTU, IPPROTO_IPV6)) == NULL)
		return;

	if (FUNC7(&so->so_rcv, FUNC2(dst), NULL, m_mtu, NULL) == 0) {
		FUNC4(m_mtu);
		/* XXX: should count statistics */
	} else {
		FUNC9(so);
	}
}