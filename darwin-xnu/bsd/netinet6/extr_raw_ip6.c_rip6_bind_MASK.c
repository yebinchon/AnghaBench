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
struct sockaddr_in6 {scalar_t__ sin6_family; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_port; scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; } ;
struct sockaddr {int sa_len; } ;
struct proc {int dummy; } ;
struct inpcb {struct ifnet* in6p_last_outifp; int /*<<< orphan*/  in6p_laddr; } ;
struct in6_ifaddr {int ia6_flags; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
typedef  int /*<<< orphan*/  sin6 ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_CLAT46 ; 
 int IN6_IFF_DEPRECATED ; 
 int IN6_IFF_DETACHED ; 
 int IN6_IFF_NOTREADY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*) ; 
 struct sockaddr_in6* FUNC5 (struct sockaddr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in6*,int) ; 
 struct ifaddr* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifnet_head ; 
 int /*<<< orphan*/  ip6_use_defzone ; 
 scalar_t__ FUNC9 (struct inpcb*) ; 
 int FUNC10 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC11 (struct socket*) ; 

__attribute__((used)) static int
FUNC12(struct socket *so, struct sockaddr *nam, struct proc *p)
{
#pragma unused(p)
	struct inpcb *inp = FUNC11(so);
	struct sockaddr_in6 sin6;
	struct ifaddr *ifa = NULL;
	struct ifnet *outif = NULL;
	int error;

	if (inp == NULL
#if NECP
		|| (necp_socket_should_use_flow_divert(inp))
#endif /* NECP */
		)
		return (inp == NULL ? EINVAL : EPROTOTYPE);

	if (nam->sa_len != sizeof (struct sockaddr_in6))
		return (EINVAL);

	if (FUNC6(&ifnet_head) || FUNC5(nam)->sin6_family != AF_INET6)
		return (EADDRNOTAVAIL);

	FUNC7(&sin6, sizeof (sin6));
	*(&sin6) = *FUNC5(nam);

	if ((error = FUNC10(&sin6, ip6_use_defzone)) != 0)
		return (error);

	/* Sanitize local copy for address searches */
	sin6.sin6_flowinfo = 0;
	sin6.sin6_scope_id = 0;
	sin6.sin6_port = 0;

	if (!FUNC3(&sin6.sin6_addr) &&
	    (ifa = FUNC8(FUNC4(&sin6))) == 0)
		return (EADDRNOTAVAIL);
	if (ifa != NULL) {
		FUNC0(ifa);
		if (((struct in6_ifaddr *)ifa)->ia6_flags &
		    (IN6_IFF_ANYCAST | IN6_IFF_NOTREADY | IN6_IFF_CLAT46 |
		     IN6_IFF_DETACHED | IN6_IFF_DEPRECATED)) {
			FUNC2(ifa);
			FUNC1(ifa);
			return (EADDRNOTAVAIL);
		}
		outif = ifa->ifa_ifp;
		FUNC2(ifa);
		FUNC1(ifa);
	}
	inp->in6p_laddr = sin6.sin6_addr;
	inp->in6p_last_outifp = outif;

	return (0);
}