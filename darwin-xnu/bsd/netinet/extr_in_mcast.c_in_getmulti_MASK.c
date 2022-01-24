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
struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct in_multi {int inm_reqcnt; int inm_debug; int /*<<< orphan*/  inm_srcs; TYPE_3__* inm_st; TYPE_2__ inm_scq; int /*<<< orphan*/  inm_state; struct ifmultiaddr* inm_ifma; int /*<<< orphan*/ * inm_igi; struct ifnet* inm_ifp; struct in_addr inm_addr; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {struct in_multi* ifma_protospec; TYPE_1__* ifma_addr; } ;
typedef  int /*<<< orphan*/  gsin ;
struct TYPE_6__ {void* iss_fmode; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int ENOMEM ; 
 int IFD_ATTACHED ; 
 int IFD_TRASHED ; 
 int /*<<< orphan*/  FUNC0 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  IGMP_MAX_STATE_CHANGES ; 
 int /*<<< orphan*/  IGMP_NOT_MEMBER ; 
 int /*<<< orphan*/  FUNC5 (struct in_multi*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_multi*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_multi*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_multi*) ; 
 int /*<<< orphan*/  FUNC9 (struct in_addr const*,struct ifnet*,struct in_multi*) ; 
 void* MCAST_UNDEFINED ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_in*,int) ; 
 int FUNC13 (struct ifnet*,struct sockaddr*,struct ifmultiaddr**) ; 
 int FUNC14 (struct in_addr,struct in_addr const) ; 
 struct in_multi* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct in_multi*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static int
FUNC20(struct ifnet *ifp, const struct in_addr *group,
    struct in_multi **pinm)
{
	struct sockaddr_in	 gsin;
	struct ifmultiaddr	*ifma;
	struct in_multi		*inm;
	int			error;

	FUNC19();
	FUNC9(group, ifp, inm);
	if (inm != NULL) {
		FUNC7(inm);
		FUNC11(inm->inm_reqcnt >= 1);
		inm->inm_reqcnt++;
		FUNC11(inm->inm_reqcnt != 0);
		*pinm = inm;
		FUNC8(inm);
		FUNC17();
		/*
		 * We already joined this group; return the inm
		 * with a refcount held (via lookup) for caller.
		 */
		return (0);
	}
	FUNC17();

	FUNC12(&gsin, sizeof(gsin));
	gsin.sin_family = AF_INET;
	gsin.sin_len = sizeof(struct sockaddr_in);
	gsin.sin_addr = *group;

	/*
	 * Check if a link-layer group is already associated
	 * with this network-layer group on the given ifnet.
	 */
	error = FUNC13(ifp, (struct sockaddr *)&gsin, &ifma);
	if (error != 0)
		return (error);

	/*
	 * See comments in inm_remref() for access to ifma_protospec.
	 */
	FUNC18();
	FUNC0(ifma);
	if ((inm = ifma->ifma_protospec) != NULL) {
		FUNC11(ifma->ifma_addr != NULL);
		FUNC11(ifma->ifma_addr->sa_family == AF_INET);
		FUNC5(inm);	/* for caller */
		FUNC2(ifma);
		FUNC7(inm);
		FUNC11(inm->inm_ifma == ifma);
		FUNC11(inm->inm_ifp == ifp);
		FUNC11(FUNC14(inm->inm_addr, *group));
		if (inm->inm_debug & IFD_ATTACHED) {
			FUNC11(inm->inm_reqcnt >= 1);
			inm->inm_reqcnt++;
			FUNC11(inm->inm_reqcnt != 0);
			*pinm = inm;
			FUNC8(inm);
			FUNC17();
			FUNC1(ifma);
			/*
			 * We lost the race with another thread doing
			 * in_getmulti(); since this group has already
			 * been joined; return the inm with a refcount
			 * held for caller.
			 */
			return (0);
		}
		/*
		 * We lost the race with another thread doing in_delmulti();
		 * the inm referring to the ifma has been detached, thus we
		 * reattach it back to the in_multihead list and return the
		 * inm with a refcount held for the caller.
		 */
		FUNC16(inm);
		FUNC11((inm->inm_debug &
		    (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
		*pinm = inm;
		FUNC8(inm);
		FUNC17();
		FUNC1(ifma);
		return (0);
	}
	FUNC2(ifma);

	/*
	 * A new in_multi record is needed; allocate and initialize it.
	 * We DO NOT perform an IGMP join as the in_ layer may need to
	 * push an initial source list down to IGMP to support SSM.
	 *
	 * The initial source filter state is INCLUDE, {} as per the RFC.
	 */
	inm = FUNC15(M_WAITOK);
	if (inm == NULL) {
		FUNC17();
		FUNC1(ifma);
		return (ENOMEM);
	}
	FUNC7(inm);
	inm->inm_addr = *group;
	inm->inm_ifp = ifp;
	inm->inm_igi = FUNC4(ifp);
	FUNC11(inm->inm_igi != NULL);
	FUNC3(inm->inm_igi);
	inm->inm_ifma = ifma;		/* keep refcount from if_addmulti() */
	inm->inm_state = IGMP_NOT_MEMBER;
	/*
	 * Pending state-changes per group are subject to a bounds check.
	 */
	inm->inm_scq.ifq_maxlen = IGMP_MAX_STATE_CHANGES;
	inm->inm_st[0].iss_fmode = MCAST_UNDEFINED;
	inm->inm_st[1].iss_fmode = MCAST_UNDEFINED;
	FUNC10(&inm->inm_srcs);
	*pinm = inm;
	FUNC16(inm);
	FUNC11((inm->inm_debug & (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
	FUNC6(inm);		/* for caller */
	FUNC8(inm);

	FUNC0(ifma);
	FUNC11(ifma->ifma_protospec == NULL);
	ifma->ifma_protospec = inm;
	FUNC2(ifma);
	FUNC17();

	return (0);
}