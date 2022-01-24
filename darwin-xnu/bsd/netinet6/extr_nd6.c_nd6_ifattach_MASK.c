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
struct nd_ifinfo {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; scalar_t__ initialized; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  ND6_IFF_DAD ; 
 int /*<<< orphan*/  ND6_IFF_IFDISABLED ; 
 int /*<<< orphan*/  ND6_IFF_PERFORMNUD ; 
 struct nd_ifinfo* FUNC0 (struct ifnet*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_if_lock_attr ; 
 int /*<<< orphan*/  nd_if_lock_grp ; 

void
FUNC9(struct ifnet *ifp)
{
	struct nd_ifinfo *ndi = FUNC0(ifp);

	FUNC1(NULL != ndi);
	if (!ndi->initialized) {
		FUNC3(&ndi->lock, nd_if_lock_grp, nd_if_lock_attr);
		ndi->flags = ND6_IFF_PERFORMNUD;
		ndi->flags |= ND6_IFF_DAD;
		ndi->initialized = TRUE;
	}

	FUNC4(&ndi->lock);

	if (!(ifp->if_flags & IFF_MULTICAST)) {
		ndi->flags |= ND6_IFF_IFDISABLED;
	}

	FUNC6(ifp);
	FUNC5(&ndi->lock);
	FUNC7(ifp);

	FUNC8((LOG_INFO, ": ",
	    "%s Reinit'd ND information for interface %s\n",
	    FUNC2(ifp)));
	return;
}