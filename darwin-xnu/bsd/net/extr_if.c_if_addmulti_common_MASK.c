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
struct sockaddr_storage {scalar_t__ ss_len; } ;
typedef  struct sockaddr {scalar_t__ sa_family; } const sockaddr ;
struct ifnet {int if_flags; scalar_t__ if_updatemcasts; } ;
struct ifmultiaddr {struct sockaddr const* ifma_addr; struct ifnet* ifma_ifp; struct ifmultiaddr* ifma_ll; } ;
typedef  int /*<<< orphan*/  storage ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 scalar_t__ AF_UNSPEC ; 
 int EADDRNOTAVAIL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC1 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  M_IFADDR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  RTM_NEWMADDR ; 
 int /*<<< orphan*/  SIOCADDMULTI ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct sockaddr const* FUNC6 (struct sockaddr const*) ; 
 int FUNC7 (struct ifnet*,struct sockaddr const*,struct sockaddr const*,int) ; 
 int FUNC8 (struct ifnet*,struct sockaddr const*,struct ifmultiaddr**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct ifmultiaddr*,int) ; 
 struct ifmultiaddr* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ifmultiaddr*) ; 

__attribute__((used)) static int
FUNC16(struct ifnet *ifp, const struct sockaddr *sa,
    struct ifmultiaddr **retifma, int anon)
{
	struct sockaddr_storage storage;
	struct sockaddr *llsa = NULL;
	struct sockaddr *dupsa = NULL;
	int error = 0, ll_firstref = 0, lladdr;
	struct ifmultiaddr *ifma = NULL;
	struct ifmultiaddr *llifma = NULL;

	/* Only AF_UNSPEC/AF_LINK is allowed for an "anonymous" address */
	FUNC5(!anon || sa->sa_family == AF_UNSPEC ||
	    sa->sa_family == AF_LINK);

	/* If sa is a AF_LINK or AF_UNSPEC, duplicate and normalize it */
	if (sa->sa_family == AF_LINK || sa->sa_family == AF_UNSPEC) {
		dupsa = FUNC6(sa);
		if (dupsa == NULL) {
			error = ENOMEM;
			goto cleanup;
		}
		sa = dupsa;
	}

	FUNC14(ifp);
	if (!(ifp->if_flags & IFF_MULTICAST)) {
		error = EADDRNOTAVAIL;
		FUNC13(ifp);
		goto cleanup;
	}

	/* If the address is already present, return a new reference to it */
	error = FUNC8(ifp, sa, retifma, anon);
	FUNC13(ifp);
	if (error == 0)
		goto cleanup;

	/*
	 * The address isn't already present; give the link layer a chance
	 * to accept/reject it, and also find out which AF_LINK address this
	 * maps to, if it isn't one already.
	 */
	error = FUNC7(ifp, sa, (struct sockaddr *)&storage,
	    sizeof (storage));
	if (error == 0 && storage.ss_len != 0) {
		llsa = FUNC6((struct sockaddr *)&storage);
		if (llsa == NULL) {
			error = ENOMEM;
			goto cleanup;
		}

		llifma = FUNC10(M_WAITOK);
		if (llifma == NULL) {
			error = ENOMEM;
			goto cleanup;
		}
	}

	/* to be similar to FreeBSD */
	if (error == EOPNOTSUPP)
		error = 0;
	else if (error != 0)
		goto cleanup;

	/* Allocate while we aren't holding any locks */
	if (dupsa == NULL) {
		dupsa = FUNC6(sa);
		if (dupsa == NULL) {
			error = ENOMEM;
			goto cleanup;
		}
	}
	ifma = FUNC10(M_WAITOK);
	if (ifma == NULL) {
		error = ENOMEM;
		goto cleanup;
	}

	FUNC14(ifp);
	/*
	 * Check again for the matching multicast.
	 */
	error = FUNC8(ifp, sa, retifma, anon);
	if (error == 0) {
		FUNC13(ifp);
		goto cleanup;
	}

	if (llifma != NULL) {
		FUNC5(!anon);	/* must not get here if "anonymous" */
		if (FUNC8(ifp, llsa, &ifma->ifma_ll, 0) == 0) {
			FUNC0(llsa, M_IFADDR);
			llsa = NULL;
			FUNC11(llifma);
			llifma = NULL;
			FUNC5(ifma->ifma_ll->ifma_ifp == ifp);
		} else {
			ll_firstref = 1;
			llifma->ifma_addr = llsa;
			llifma->ifma_ifp = ifp;
			FUNC2(llifma);
			FUNC9(ifp, llifma, 0);
			/* add extra refcnt for ifma */
			FUNC1(llifma);
			FUNC4(llifma);
			ifma->ifma_ll = llifma;
		}
	}

	/* "anonymous" request should not result in network address */
	FUNC5(!anon || ifma->ifma_ll == NULL);

	ifma->ifma_addr = dupsa;
	ifma->ifma_ifp = ifp;
	FUNC2(ifma);
	FUNC9(ifp, ifma, anon);
	FUNC1(ifma);		/* for this routine */
	if (retifma != NULL) {
		*retifma = ifma;
		FUNC1(*retifma);	/* for caller */
	}
	lladdr = (ifma->ifma_addr->sa_family == AF_UNSPEC ||
	    ifma->ifma_addr->sa_family == AF_LINK);
	FUNC4(ifma);
	FUNC13(ifp);

	FUNC15(RTM_NEWMADDR, ifma);
	FUNC3(ifma);			/* for this routine */

	/*
	 * We are certain we have added something, so call down to the
	 * interface to let them know about it.  Do this only for newly-
	 * added AF_LINK/AF_UNSPEC address in the if_multiaddrs set.
	 */
	if (lladdr || ll_firstref)
		(void) FUNC12(ifp, 0, SIOCADDMULTI, NULL);

	if (ifp->if_updatemcasts > 0)
		ifp->if_updatemcasts = 0;

	return (0);

cleanup:
	if (ifma != NULL)
		FUNC11(ifma);
	if (dupsa != NULL)
		FUNC0(dupsa, M_IFADDR);
	if (llifma != NULL)
		FUNC11(llifma);
	if (llsa != NULL)
		FUNC0(llsa, M_IFADDR);

	return (error);
}