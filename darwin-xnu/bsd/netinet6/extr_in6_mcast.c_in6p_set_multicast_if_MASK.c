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
typedef  size_t u_int ;
struct sockopt {int sopt_valsize; } ;
struct ip6_moptions {struct ifnet* im6o_multicast_ifp; } ;
struct inpcb {int dummy; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (struct ip6_moptions*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_moptions*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_moptions*) ; 
 scalar_t__ if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct ip6_moptions* FUNC5 (struct inpcb*) ; 
 int FUNC6 (struct sockopt*,size_t*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct inpcb *inp, struct sockopt *sopt)
{
	struct ifnet		*ifp;
	struct ip6_moptions	*imo;
	u_int			 ifindex;
	int			 error;

	if (sopt->sopt_valsize != sizeof(u_int))
		return (EINVAL);

	error = FUNC6(sopt, &ifindex, sizeof(u_int), sizeof(u_int));
	if (error)
		return (error);

	FUNC4();
	if ((u_int)if_index < ifindex) {
		FUNC3();
		return (EINVAL);
	}

	ifp = ifindex2ifnet[ifindex];
	FUNC3();
	if (ifp == NULL || (ifp->if_flags & IFF_MULTICAST) == 0)
		return (EADDRNOTAVAIL);

	imo = FUNC5(inp);
	if (imo == NULL)
		return (ENOMEM);

	FUNC0(imo);
	imo->im6o_multicast_ifp = ifp;
	FUNC2(imo);
	FUNC1(imo);	/* from in6p_findmoptions() */

	return (0);
}