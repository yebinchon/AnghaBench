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
struct sockaddr {scalar_t__ sa_family; } ;
struct ifnet {int /*<<< orphan*/  if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; scalar_t__ ifma_anoncnt; int ifma_debug; scalar_t__ ifma_reqcnt; TYPE_1__* ifma_addr; struct ifmultiaddr* ifma_ll; struct ifnet* ifma_ifp; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 scalar_t__ AF_UNSPEC ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int IFD_ATTACHED ; 
 int IFMAF_ANONYMOUS ; 
 int /*<<< orphan*/  FUNC1 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifmultiaddr*) ; 
 struct ifmultiaddr* FUNC6 (int /*<<< orphan*/ *) ; 
 struct ifmultiaddr* FUNC7 (struct ifmultiaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IFADDR ; 
 int /*<<< orphan*/  RTM_DELMADDR ; 
 int /*<<< orphan*/  SIOCDELMULTI ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct sockaddr* FUNC9 (struct sockaddr const*) ; 
 int FUNC10 (struct ifnet*,struct ifmultiaddr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr const*,TYPE_1__*) ; 
 int /*<<< orphan*/  ifma_link ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ifmultiaddr*) ; 

__attribute__((used)) static int
FUNC16(struct ifmultiaddr *ifma, struct ifnet *ifp,
    const struct sockaddr *sa, int anon)
{
	struct sockaddr		*dupsa = NULL;
	int			lastref, ll_lastref = 0, lladdr;
	struct ifmultiaddr	*ll = NULL;

	/* sanity check for callers */
	FUNC8(ifma != NULL || (ifp != NULL && sa != NULL));

	if (ifma != NULL)
		ifp = ifma->ifma_ifp;

	if (sa != NULL &&
	    (sa->sa_family == AF_LINK || sa->sa_family == AF_UNSPEC)) {
		dupsa = FUNC9(sa);
		if (dupsa == NULL)
			return (ENOMEM);
		sa = dupsa;
	}

	FUNC14(ifp);
	if (ifma == NULL) {
		for (ifma = FUNC6(&ifp->if_multiaddrs); ifma != NULL;
		    ifma = FUNC7(ifma, ifma_link)) {
			FUNC2(ifma);
			if (!FUNC11(sa, ifma->ifma_addr) ||
			    (anon && !(ifma->ifma_flags & IFMAF_ANONYMOUS))) {
				FUNC8(!(ifma->ifma_flags & IFMAF_ANONYMOUS) ||
				    ifma->ifma_anoncnt != 0);
				FUNC5(ifma);
				continue;
			}
			/* found; keep it locked */
			break;
		}
		if (ifma == NULL) {
			if (dupsa != NULL)
				FUNC0(dupsa, M_IFADDR);
			FUNC13(ifp);
			return (ENOENT);
		}
	} else {
		FUNC2(ifma);
	}
	FUNC3(ifma);
	FUNC1(ifma);	/* for this routine */
	lastref = FUNC10(ifp, ifma, anon);
	FUNC8(!lastref || (!(ifma->ifma_debug & IFD_ATTACHED) &&
	    ifma->ifma_reqcnt == 0));
	FUNC8(!anon || ifma->ifma_ll == NULL);
	ll = ifma->ifma_ll;
	lladdr = (ifma->ifma_addr->sa_family == AF_UNSPEC ||
	    ifma->ifma_addr->sa_family == AF_LINK);
	FUNC5(ifma);
	if (lastref && ll != NULL) {
		FUNC2(ll);
		ll_lastref = FUNC10(ifp, ll, 0);
		FUNC5(ll);
	}
	FUNC13(ifp);

	if (lastref)
		FUNC15(RTM_DELMADDR, ifma);

	if ((ll == NULL && lastref && lladdr) || ll_lastref) {
		/*
		 * Make sure the interface driver is notified in the
		 * case of a link layer mcast group being left.  Do
		 * this only for a AF_LINK/AF_UNSPEC address that has
		 * been removed from the if_multiaddrs set.
		 */
		FUNC12(ifp, 0, SIOCDELMULTI, NULL);
	}

	if (lastref)
		FUNC4(ifma);	/* for if_multiaddrs list */
	if (ll_lastref)
		FUNC4(ll);	/* for if_multiaddrs list */

	FUNC4(ifma);		/* for this routine */
	if (dupsa != NULL)
		FUNC0(dupsa, M_IFADDR);

	return (0);
}