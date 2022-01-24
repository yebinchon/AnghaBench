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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_addrlifetime_i {scalar_t__ ia6ti_expire; } ;
struct in6_ifaddr {int ia6_flags; TYPE_4__ ia_addr; struct in6_addrlifetime_i ia6_lifetime; } ;
struct in6_addr {scalar_t__* s6_addr16; } ;
struct TYPE_5__ {struct ifaddr* tqh_first; } ;
struct ifnet {TYPE_1__ if_addrlist; } ;
struct TYPE_6__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_3__* ifa_addr; TYPE_2__ ifa_list; } ;
struct icmp6_nodeinfo {int ni_flags; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int ICMP6_NODEINFO_TMPADDROK ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_DEPRECATED ; 
 int IN6_IFF_TEMPORARY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
#define  IPV6_ADDR_SCOPE_GLOBAL 130 
#define  IPV6_ADDR_SCOPE_LINKLOCAL 129 
#define  IPV6_ADDR_SCOPE_SITELOCAL 128 
 int /*<<< orphan*/  ND6_INFINITE_LIFETIME ; 
 int NI_NODEADDR_FLAG_ALL ; 
 int NI_NODEADDR_FLAG_ANYCAST ; 
 int NI_NODEADDR_FLAG_GLOBAL ; 
 int NI_NODEADDR_FLAG_LINKLOCAL ; 
 int NI_NODEADDR_FLAG_SITELOCAL ; 
 int NI_NODEADDR_FLAG_TRUNCATE ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int icmp6_nodeinfo ; 
 int /*<<< orphan*/  if_list ; 
 int /*<<< orphan*/  ifnet_head ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct icmp6_nodeinfo *ni6, struct icmp6_nodeinfo *nni6,
		struct ifnet *ifp0, int resid)
{
	struct ifnet *ifp = ifp0;
	struct in6_ifaddr *ifa6;
	struct ifaddr *ifa;
	struct ifnet *ifp_dep = NULL;
	int copied = 0, allow_deprecated = 0;
	u_char *cp = (u_char *)(nni6 + 1);
	int niflags = ni6->ni_flags;
	u_int32_t ltime;
	uint64_t now = FUNC12();

	if (ifp0 == NULL && !(niflags & NI_NODEADDR_FLAG_ALL))
		return (0);	/* needless to copy */

  again:

	FUNC8();
	if (ifp == NULL)
		ifp = FUNC3(&ifnet_head);

	for (; ifp; ifp = FUNC4(ifp, if_list)) {
		FUNC10(ifp);
		for (ifa = ifp->if_addrlist.tqh_first; ifa;
		     ifa = ifa->ifa_list.tqe_next) {
			struct in6_addrlifetime_i *lt;

			FUNC0(ifa);
			if (ifa->ifa_addr->sa_family != AF_INET6) {
				FUNC1(ifa);
				continue;
			}
			ifa6 = (struct in6_ifaddr *)ifa;

			if ((ifa6->ia6_flags & IN6_IFF_DEPRECATED) != 0 &&
			    allow_deprecated == 0) {
				/*
				 * prefererred address should be put before
				 * deprecated addresses.
				 */

				/* record the interface for later search */
				if (ifp_dep == NULL)
					ifp_dep = ifp;

				FUNC1(ifa);
				continue;
			} else if ((ifa6->ia6_flags & IN6_IFF_DEPRECATED) == 0 &&
			    allow_deprecated != 0) {
				FUNC1(ifa);
				continue; /* we now collect deprecated addrs */
			}
			/* What do we have to do about ::1? */
			switch (FUNC11(&ifa6->ia_addr.sin6_addr)) {
			case IPV6_ADDR_SCOPE_LINKLOCAL:
				if ((niflags & NI_NODEADDR_FLAG_LINKLOCAL) == 0) {
					FUNC1(ifa);
					continue;
				}
				break;
			case IPV6_ADDR_SCOPE_SITELOCAL:
				if ((niflags & NI_NODEADDR_FLAG_SITELOCAL) == 0) {
					FUNC1(ifa);
					continue;
				}
				break;
			case IPV6_ADDR_SCOPE_GLOBAL:
				if ((niflags & NI_NODEADDR_FLAG_GLOBAL) == 0) {
					FUNC1(ifa);
					continue;
				}
				break;
			default:
				FUNC1(ifa);
				continue;
			}

			/*
			 * check if anycast is okay.
			 * XXX: just experimental.  not in the spec.
			 */
			if ((ifa6->ia6_flags & IN6_IFF_ANYCAST) != 0 &&
			    (niflags & NI_NODEADDR_FLAG_ANYCAST) == 0) {
				FUNC1(ifa);
				continue;
			}
			if ((ifa6->ia6_flags & IN6_IFF_TEMPORARY) != 0 &&
			    (icmp6_nodeinfo & ICMP6_NODEINFO_TMPADDROK) == 0) {
				FUNC1(ifa);
				continue;
			}

			/* now we can copy the address */
			if (resid < sizeof(struct in6_addr) +
			    sizeof(u_int32_t)) {
				FUNC1(ifa);
				/*
				 * We give up much more copy.
				 * Set the truncate flag and return.
				 */
				nni6->ni_flags |=
					NI_NODEADDR_FLAG_TRUNCATE;
				FUNC9(ifp);
				FUNC7();
				return(copied);
			}

			/*
			 * Set the TTL of the address.
			 * The TTL value should be one of the following
			 * according to the specification:
			 *
			 * 1. The remaining lifetime of a DHCP lease on the
			 *    address, or
			 * 2. The remaining Valid Lifetime of a prefix from
			 *    which the address was derived through Stateless
			 *    Autoconfiguration.
			 *
			 * Note that we currently do not support stateful
			 * address configuration by DHCPv6, so the former
			 * case can't happen.
			 */
			lt = &ifa6->ia6_lifetime;
			if (lt->ia6ti_expire == 0) {
				ltime = ND6_INFINITE_LIFETIME;
			} else {
				if (lt->ia6ti_expire > now)
					ltime = FUNC6(lt->ia6ti_expire - now);
				else
					ltime = 0;
			}

			FUNC5(&ltime, cp, sizeof(u_int32_t));
			cp += sizeof(u_int32_t);

			/* copy the address itself */
			FUNC5(&ifa6->ia_addr.sin6_addr, cp,
			      sizeof(struct in6_addr));
			/* XXX: KAME link-local hack; remove ifindex */
			if (FUNC2(&ifa6->ia_addr.sin6_addr))
				((struct in6_addr *)(void *)cp)->s6_addr16[1] = 0;
			cp += sizeof(struct in6_addr);

			resid -= (sizeof(struct in6_addr) + sizeof(u_int32_t));
			copied += (sizeof(struct in6_addr) +
				   sizeof(u_int32_t));
			FUNC1(ifa);
		}
		FUNC9(ifp);
		if (ifp0)	/* we need search only on the specified IF */
			break;
	}
	FUNC7();

	if (allow_deprecated == 0 && ifp_dep != NULL) {
		ifp = ifp_dep;
		allow_deprecated = 1;

		goto again;
	}

	return(copied);
}