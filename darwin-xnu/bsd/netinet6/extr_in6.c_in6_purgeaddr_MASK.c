#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct in6_multi_mship {int dummy; } ;
struct TYPE_6__ {struct in6_multi_mship* lh_first; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {scalar_t__ sin6_family; } ;
struct in6_ifaddr {int ia_flags; int ia_plen; TYPE_3__ ia6_memberships; int /*<<< orphan*/  ia_ifa; TYPE_2__ ia_addr; TYPE_1__ ia_dstaddr; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int IFA_ROUTE ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int /*<<< orphan*/  KEV_INET6_ADDR_DELETED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC4 (struct in6_multi_mship*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int RTF_HOST ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  i6mm_chain ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_multi_mship*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ,struct in6_ifaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct in6_ifaddr*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ifaddr*) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC15(struct ifaddr *ifa)
{
	struct ifnet *ifp = ifa->ifa_ifp;
	struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
	struct in6_multi_mship *imm;

	FUNC3(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

	/* stop DAD processing */
	FUNC13(ifa);

	/*
	 * delete route to the destination of the address being purged.
	 * The interface must be p2p or loopback in this case.
	 */
	FUNC0(ifa);
	if ((ia->ia_flags & IFA_ROUTE) && ia->ia_plen == 128) {
		int error, rtf;

		FUNC2(ifa);
		rtf = (ia->ia_dstaddr.sin6_family == AF_INET6) ? RTF_HOST : 0;
		error = FUNC14(&(ia->ia_ifa), RTM_DELETE, rtf);
		if (error != 0) {
			FUNC12(LOG_ERR, "in6_purgeaddr: failed to remove "
			    "a route to the p2p destination: %s on %s, "
			    "errno=%d\n",
			    FUNC11(&ia->ia_addr.sin6_addr), FUNC5(ifp),
			    error);
			/* proceed anyway... */
		}
		FUNC1(ifa);
		ia->ia_flags &= ~IFA_ROUTE;
	}
	FUNC2(ifa);

	/* Remove ownaddr's loopback rtentry, if it exists. */
	FUNC7(&(ia->ia_ifa));

	/*
	 * leave from multicast groups we have joined for the interface
	 */
	FUNC0(ifa);
	while ((imm = ia->ia6_memberships.lh_first) != NULL) {
		FUNC4(imm, i6mm_chain);
		FUNC2(ifa);
		FUNC8(imm);
		FUNC0(ifa);
	}
	FUNC2(ifa);

	/* in6_unlink_ifa() will need exclusive access */
	FUNC10(ia, ifp);
	FUNC9(ifp, KEV_INET6_ADDR_DELETED, ia, NULL);

	(void) FUNC6(ifp, AF_INET6);
}