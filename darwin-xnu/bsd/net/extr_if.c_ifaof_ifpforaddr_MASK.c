#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct sockaddr {scalar_t__ sa_family; char* sa_data; } ;
struct TYPE_5__ {struct ifaddr* tqh_first; } ;
struct ifnet {int if_flags; TYPE_1__ if_addrhead; } ;
struct TYPE_6__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_3__* ifa_netmask; TYPE_4__* ifa_addr; TYPE_4__* ifa_dstaddr; TYPE_2__ ifa_link; } ;
struct TYPE_8__ {scalar_t__ sa_family; char* sa_data; } ;
struct TYPE_7__ {char* sa_data; int sa_len; } ;

/* Variables and functions */
 scalar_t__ AF_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 
 int IFF_POINTOPOINT ; 
 scalar_t__ FUNC4 (struct sockaddr const*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

struct ifaddr *
FUNC7(const struct sockaddr *addr, struct ifnet *ifp)
{
	struct ifaddr *ifa = NULL;
	const char *cp, *cp2, *cp3;
	char *cplim;
	struct ifaddr *ifa_maybe = NULL;
	struct ifaddr *better_ifa_maybe = NULL;
	u_int af = addr->sa_family;

	if (af >= AF_MAX)
		return (NULL);

	FUNC6(ifp);
	for (ifa = ifp->if_addrhead.tqh_first; ifa;
	     ifa = ifa->ifa_link.tqe_next) {
		FUNC1(ifa);
		if (ifa->ifa_addr->sa_family != af) {
			FUNC3(ifa);
			continue;
		}
		if (ifa_maybe == NULL) {
			FUNC0(ifa);	/* for ifa_maybe */
			ifa_maybe = ifa;
		}
		if (ifa->ifa_netmask == 0) {
			if (FUNC4(addr, ifa->ifa_addr) ||
			    FUNC4(addr, ifa->ifa_dstaddr)) {
				FUNC0(ifa);	/* for caller */
				FUNC3(ifa);
				break;
			}
			FUNC3(ifa);
			continue;
		}
		if (ifp->if_flags & IFF_POINTOPOINT) {
			if (FUNC4(addr, ifa->ifa_dstaddr)) {
				FUNC0(ifa);	/* for caller */
				FUNC3(ifa);
				break;
			}
		} else {
			if (FUNC4(addr, ifa->ifa_addr)) {
				/* exact match */
				FUNC0(ifa);	/* for caller */
				FUNC3(ifa);
				break;
			}
			cp = addr->sa_data;
			cp2 = ifa->ifa_addr->sa_data;
			cp3 = ifa->ifa_netmask->sa_data;
			cplim = ifa->ifa_netmask->sa_len +
			    (char *)ifa->ifa_netmask;
			for (; cp3 < cplim; cp3++)
				if ((*cp++ ^ *cp2++) & *cp3)
					break;
			if (cp3 == cplim) {
				/* subnet match */
				if (better_ifa_maybe == NULL) {
					/* for better_ifa_maybe */
					FUNC0(ifa);
					better_ifa_maybe = ifa;
				}
			}
		}
		FUNC3(ifa);
	}

	if (ifa == NULL) {
		if (better_ifa_maybe != NULL) {
			ifa = better_ifa_maybe;
			better_ifa_maybe = NULL;
		} else {
			ifa = ifa_maybe;
			ifa_maybe = NULL;
		}
	}

	FUNC5(ifp);

	if (better_ifa_maybe != NULL)
		FUNC2(better_ifa_maybe);
	if (ifa_maybe != NULL)
		FUNC2(ifa_maybe);

	return (ifa);
}