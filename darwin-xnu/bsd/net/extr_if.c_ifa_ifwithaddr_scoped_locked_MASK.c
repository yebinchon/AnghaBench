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
struct sockaddr {scalar_t__ sa_family; scalar_t__ sa_len; } ;
struct TYPE_3__ {struct ifaddr* tqh_first; } ;
struct ifnet {int if_flags; TYPE_1__ if_addrhead; } ;
struct TYPE_4__ {struct ifaddr* tqe_next; } ;
struct ifaddr {struct sockaddr const* ifa_broadaddr; struct sockaddr const* ifa_addr; TYPE_2__ ifa_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int IFF_BROADCAST ; 
 unsigned int IFSCOPE_NONE ; 
 scalar_t__ if_index ; 
 scalar_t__ FUNC3 (struct sockaddr const*,struct sockaddr const*) ; 
 struct ifaddr* FUNC4 (struct sockaddr const*) ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

struct ifaddr *
FUNC7(const struct sockaddr *addr, unsigned int ifscope)
{
	struct ifaddr *result = NULL;
	struct ifnet *ifp;

	if (ifscope == IFSCOPE_NONE)
		return (FUNC4(addr));

	if (ifscope > (unsigned int)if_index) {
		return (NULL);
	}

	ifp = ifindex2ifnet[ifscope];
	if (ifp != NULL) {
		struct ifaddr *ifa = NULL;

		/*
		 * This is suboptimal; there should be a better way
		 * to search for a given address of an interface
		 * for any given address family.
		 */
		FUNC6(ifp);
		for (ifa = ifp->if_addrhead.tqh_first; ifa != NULL;
		    ifa = ifa->ifa_link.tqe_next) {
			FUNC1(ifa);
			if (ifa->ifa_addr->sa_family != addr->sa_family) {
				FUNC2(ifa);
				continue;
			}
			if (FUNC3(addr, ifa->ifa_addr)) {
				result = ifa;
				FUNC0(ifa);	/* for caller */
				FUNC2(ifa);
				break;
			}
			if ((ifp->if_flags & IFF_BROADCAST) &&
			    ifa->ifa_broadaddr != NULL &&
			    /* IP6 doesn't have broadcast */
			    ifa->ifa_broadaddr->sa_len != 0 &&
			    FUNC3(ifa->ifa_broadaddr, addr)) {
				result = ifa;
				FUNC0(ifa);	/* for caller */
				FUNC2(ifa);
				break;
			}
			FUNC2(ifa);
		}
		FUNC5(ifp);
	}

	return (result);
}