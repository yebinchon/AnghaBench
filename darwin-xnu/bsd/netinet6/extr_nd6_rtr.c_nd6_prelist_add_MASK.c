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
struct TYPE_5__ {int /*<<< orphan*/ * s6_addr32; } ;
struct TYPE_4__ {TYPE_2__ sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * s6_addr32; } ;
struct nd_prefix {int ndpr_stateflags; int /*<<< orphan*/  ndpr_plen; TYPE_1__ ndpr_prefix; struct ifnet* ndpr_ifp; scalar_t__ ndpr_raf_onlink; int /*<<< orphan*/  ndpr_debug; TYPE_3__ ndpr_mask; int /*<<< orphan*/  ndpr_advrtrs; int /*<<< orphan*/  ndpr_lastupdate; int /*<<< orphan*/  ndpr_flags; int /*<<< orphan*/  ndpr_pltime; int /*<<< orphan*/  ndpr_vltime; } ;
struct nd_ifinfo {scalar_t__ initialized; scalar_t__ nprefixes; int /*<<< orphan*/  lock; } ;
struct nd_defrouter {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_index; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IFD_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nd_prefix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NDPRF_STATIC ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_prefix*) ; 
 struct nd_ifinfo* FUNC6 (struct ifnet*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int FUNC9 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ip6_maxifprefixes ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nd6_mutex ; 
 int FUNC14 (struct nd_prefix*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_sched_timeout_want ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_prefix ; 
 struct nd_prefix* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ndpr_entry ; 
 int /*<<< orphan*/  FUNC17 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct nd_prefix*,struct nd_defrouter*) ; 

int
FUNC20(struct nd_prefix *pr, struct nd_defrouter *dr,
    struct nd_prefix **newp, boolean_t force_scoped)
{
	struct nd_prefix *new = NULL;
	struct ifnet *ifp = pr->ndpr_ifp;
	struct nd_ifinfo *ndi = NULL;
	int i, error;

	if (ip6_maxifprefixes >= 0) {
		ndi = FUNC6(ifp);
		FUNC7((NULL != ndi) && (TRUE == ndi->initialized));
		FUNC12(&ndi->lock);
		if (ndi->nprefixes >= ip6_maxifprefixes) {
			FUNC13(&ndi->lock);
			return (ENOMEM);
		}
		FUNC13(&ndi->lock);
	}

	new = FUNC16(M_WAITOK);
	if (new == NULL)
		return (ENOMEM);

	FUNC4(new);
	FUNC4(pr);
	new->ndpr_ifp = pr->ndpr_ifp;
	new->ndpr_prefix = pr->ndpr_prefix;
	new->ndpr_plen = pr->ndpr_plen;
	new->ndpr_vltime = pr->ndpr_vltime;
	new->ndpr_pltime = pr->ndpr_pltime;
	new->ndpr_flags = pr->ndpr_flags;
	if (pr->ndpr_stateflags & NDPRF_STATIC)
		new->ndpr_stateflags |= NDPRF_STATIC;
	FUNC5(pr);
	if ((error = FUNC9(new)) != 0) {
		FUNC5(new);
		FUNC17(new);
		return (error);
	}
	new->ndpr_lastupdate = FUNC18();
	if (newp != NULL) {
		*newp = new;
		FUNC3(new);	/* for caller */
	}
	/* initialization */
	FUNC0(&new->ndpr_advrtrs);
	FUNC10(&new->ndpr_mask, new->ndpr_plen);
	/* make prefix in the canonical form */
	for (i = 0; i < 4; i++)
		new->ndpr_prefix.sin6_addr.s6_addr32[i] &=
			new->ndpr_mask.s6_addr32[i];

	FUNC5(new);

	/* get nd6_service() to be scheduled as soon as it's convenient */
	++nd6_sched_timeout_want;

	FUNC12(nd6_mutex);
	/* link ndpr_entry to nd_prefix list */
	FUNC1(&nd_prefix, new, ndpr_entry);
	new->ndpr_debug |= IFD_ATTACHED;
	FUNC2(new);	/* for nd_prefix list */

	FUNC12(&ndi->lock);
	ndi->nprefixes++;
	FUNC7(ndi->nprefixes != 0);
	FUNC13(&ndi->lock);

	/* ND_OPT_PI_FLAG_ONLINK processing */
	if (new->ndpr_raf_onlink) {
		int e;

		if ((e = FUNC14(new, force_scoped,
		    new->ndpr_ifp->if_index)) != 0) {
			FUNC15((LOG_ERR, "nd6_prelist_add: failed to make "
			    "the prefix %s/%d on-link %s on %s (errno=%d)\n",
			    FUNC11(&new->ndpr_prefix.sin6_addr),
			    new->ndpr_plen, force_scoped ? "scoped" :
			    "non-scoped", FUNC8(ifp), e));
			/* proceed anyway. XXX: is it correct? */
		}
	}

	if (dr) {
		FUNC19(new, dr);
	}

	FUNC13(nd6_mutex);

	return (0);
}