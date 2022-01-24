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
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; scalar_t__ sin6_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct in6_multi {int in6m_reqcnt; int in6m_debug; int /*<<< orphan*/  in6m_srcs; TYPE_3__* in6m_st; TYPE_2__ in6m_scq; int /*<<< orphan*/  in6m_state; struct ifmultiaddr* in6m_ifma; int /*<<< orphan*/ * in6m_mli; struct ifnet* in6m_ifp; struct in6_addr in6m_addr; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {struct in6_multi* ifma_protospec; TYPE_1__* ifma_addr; } ;
typedef  int /*<<< orphan*/  gsin6 ;
struct TYPE_6__ {void* iss_fmode; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int ENOMEM ; 
 int IFD_ATTACHED ; 
 int IFD_TRASHED ; 
 int /*<<< orphan*/  FUNC0 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_multi*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_multi*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_multi*) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_multi*) ; 
 int FUNC7 (struct in6_addr*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr const*,struct ifnet*,struct in6_multi*) ; 
 void* MCAST_UNDEFINED ; 
 int /*<<< orphan*/ * FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  MLD_MAX_STATE_CHANGES ; 
 int /*<<< orphan*/  MLD_NOT_MEMBER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct ifnet*,struct sockaddr*,struct ifmultiaddr**) ; 
 struct in6_multi* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct in6_multi*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC20(struct ifnet *ifp, const struct in6_addr *group,
    struct in6_multi **pinm)
{
	struct sockaddr_in6	 gsin6;
	struct ifmultiaddr	*ifma;
	struct in6_multi	*inm;
	int			 error;

	*pinm = NULL;

	FUNC18();
	FUNC8(group, ifp, inm);
	if (inm != NULL) {
		FUNC5(inm);
		FUNC12(inm->in6m_reqcnt >= 1);
		inm->in6m_reqcnt++;
		FUNC12(inm->in6m_reqcnt != 0);
		*pinm = inm;
		FUNC6(inm);
		FUNC16();
		/*
		 * We already joined this group; return the in6m
		 * with a refcount held (via lookup) for caller.
		 */
		return (0);
	}
	FUNC16();

	FUNC19(&gsin6, 0, sizeof(gsin6));
	gsin6.sin6_family = AF_INET6;
	gsin6.sin6_len = sizeof(struct sockaddr_in6);
	gsin6.sin6_addr = *group;

	/*
	 * Check if a link-layer group is already associated
	 * with this network-layer group on the given ifnet.
	 */
	error = FUNC13(ifp, (struct sockaddr *)&gsin6, &ifma);
	if (error != 0)
		return (error);

	/*
	 * See comments in in6m_remref() for access to ifma_protospec.
	 */
	FUNC17();
	FUNC0(ifma);
	if ((inm = ifma->ifma_protospec) != NULL) {
		FUNC12(ifma->ifma_addr != NULL);
		FUNC12(ifma->ifma_addr->sa_family == AF_INET6);
		FUNC3(inm);	/* for caller */
		FUNC2(ifma);
		FUNC5(inm);
		FUNC12(inm->in6m_ifma == ifma);
		FUNC12(inm->in6m_ifp == ifp);
		FUNC12(FUNC7(&inm->in6m_addr, group));
		if (inm->in6m_debug & IFD_ATTACHED) {
			FUNC12(inm->in6m_reqcnt >= 1);
			inm->in6m_reqcnt++;
			FUNC12(inm->in6m_reqcnt != 0);
			*pinm = inm;
			FUNC6(inm);
			FUNC16();
			FUNC1(ifma);
			/*
			 * We lost the race with another thread doing
			 * in6_mc_get(); since this group has already
			 * been joined; return the inm with a refcount
			 * held for caller.
			 */
			return (0);
		}
		/*
		 * We lost the race with another thread doing in6_delmulti();
		 * the inm referring to the ifma has been detached, thus we
		 * reattach it back to the in6_multihead list, and return the
		 * inm with a refcount held for the caller.
		 */
		FUNC15(inm);
		FUNC12((inm->in6m_debug &
		    (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
		*pinm = inm;
		FUNC6(inm);
		FUNC16();
		FUNC1(ifma);
		return (0);
	}
	FUNC2(ifma);

	/*
	 * A new in6_multi record is needed; allocate and initialize it.
	 * We DO NOT perform an MLD join as the in6_ layer may need to
	 * push an initial source list down to MLD to support SSM.
	 *
	 * The initial source filter state is INCLUDE, {} as per the RFC.
	 * Pending state-changes per group are subject to a bounds check.
	 */
	inm = FUNC14(M_WAITOK);
	if (inm == NULL) {
		FUNC16();
		FUNC1(ifma);
		return (ENOMEM);
	}
	FUNC5(inm);
	inm->in6m_addr = *group;
	inm->in6m_ifp = ifp;
	inm->in6m_mli = FUNC9(ifp);
	FUNC12(inm->in6m_mli != NULL);
	FUNC10(inm->in6m_mli);
	inm->in6m_ifma = ifma;		/* keep refcount from if_addmulti() */
	inm->in6m_state = MLD_NOT_MEMBER;
	/*
	 * Pending state-changes per group are subject to a bounds check.
	 */
	inm->in6m_scq.ifq_maxlen = MLD_MAX_STATE_CHANGES;
	inm->in6m_st[0].iss_fmode = MCAST_UNDEFINED;
	inm->in6m_st[1].iss_fmode = MCAST_UNDEFINED;
	FUNC11(&inm->in6m_srcs);
	*pinm = inm;
	FUNC15(inm);
	FUNC12((inm->in6m_debug &
	    (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
	FUNC4(inm);	/* for caller */
	FUNC6(inm);

	FUNC0(ifma);
	FUNC12(ifma->ifma_protospec == NULL);
	ifma->ifma_protospec = inm;
	FUNC2(ifma);
	FUNC16();

	return (0);
}