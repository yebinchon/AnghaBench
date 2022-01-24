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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct nd_ifinfo {scalar_t__ initialized; scalar_t__ ndefrouters; int /*<<< orphan*/  lock; } ;
struct nd_defrouter {scalar_t__ rtlifetime; int stateflags; int /*<<< orphan*/  err; struct ifnet* ifp; int /*<<< orphan*/  base_uptime; int /*<<< orphan*/  base_calendartime; int /*<<< orphan*/  expire; int /*<<< orphan*/  flags; int /*<<< orphan*/  rtaddr; } ;
struct ifnet {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NDDRF_IFSCOPE ; 
 int /*<<< orphan*/  FUNC1 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_defrouter*) ; 
 struct nd_ifinfo* FUNC5 (struct ifnet*) ; 
 struct nd_defrouter* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_defrouter*,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 struct nd_defrouter* FUNC9 (struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct nd_defrouter* FUNC12 (int /*<<< orphan*/ *,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  dr_entry ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 scalar_t__ ip6_maxifdefrouters ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nd6_defrouter_genid ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  nd6_sched_timeout_want ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_defrouter ; 
 struct nd_defrouter* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int FUNC25 (struct nd_defrouter*) ; 

__attribute__((used)) static struct nd_defrouter *
FUNC26(struct nd_defrouter *new, boolean_t scoped)
{
	struct nd_defrouter *dr, *n;
	struct ifnet *ifp = new->ifp;
	struct nd_ifinfo *ndi = NULL;
	struct timeval caltime;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_OWNED);

	if ((dr = FUNC12(&new->rtaddr, ifp)) != NULL) {
		/* entry exists */
		if (new->rtlifetime == 0) {
			FUNC10(&nd_defrouter, dr, dr_entry);
			FUNC14(dr);
			FUNC3(dr);        /* remove list reference */
			FUNC3(dr);
			dr = NULL;
		} else {
			int oldpref = FUNC25(dr);
			struct nd_defrouter *p = NULL;
			/* override */
			dr->flags = new->flags; /* xxx flag check */
			dr->rtlifetime = new->rtlifetime;
			dr->expire = new->expire;

			/*
			 * If the preference does not change, there's no need
			 * to sort the entries.  If Scoped Routing is enabled,
			 * put the primary/non-scoped router at the top of the
			 * list of routers in the same preference band, unless
			 * it's already at that position.
			 */
			/* same preference and scoped; just return */
			if (FUNC25(new) == oldpref && scoped)
				return (dr);

			n = FUNC6(&nd_defrouter);
			while (n != NULL) {
				/* preference changed; sort it */
				if (FUNC25(new) != oldpref)
					break;

				/* not at the top of band; sort it */
				if (n != dr && FUNC25(n) == oldpref &&
						(!p || FUNC25(p) > FUNC25(n)))
					break;

				p = n;
				n = FUNC9(n, dr_entry);
			}

			/* nothing has changed, just return */
			if (n == NULL && (scoped ||
			    !(dr->stateflags & NDDRF_IFSCOPE)))
				return (dr);

			/*
			 * preferred router may be changed, so relocate
			 * this router.
			 * XXX: calling TAILQ_REMOVE directly is a bad manner.
			 * However, since defrtrlist_del() has many side
			 * effects, we intentionally do so here.
			 * defrouter_select() below will handle routing
			 * changes later.
			 */
			FUNC10(&nd_defrouter, dr, dr_entry);
			new->stateflags = dr->stateflags;

			n = dr;
			goto insert;
		}
		return (dr);
	}

	FUNC11(dr == NULL);

	/* entry does not exist */
	if (new->rtlifetime == 0) {
		return (NULL);
	}

	n = FUNC22(M_WAITOK);
	if (n == NULL) {
		return (NULL);
	}

	ndi = FUNC5(ifp);
	FUNC11((NULL != ndi) && (TRUE == ndi->initialized));
	FUNC18(&ndi->lock);
	if (ip6_maxifdefrouters >= 0 &&
	    ndi->ndefrouters >= ip6_maxifdefrouters) {
		FUNC19(&ndi->lock);
		FUNC23(n);
		return (NULL);
	}

	FUNC1(n);	/* for the nd_defrouter list */
	FUNC1(n);	/* for the caller */

	++nd6_defrouter_genid;
	ndi->ndefrouters++;
	FUNC11(ndi->ndefrouters != 0);
	FUNC19(&ndi->lock);

	FUNC21((LOG_INFO, "%s: allocating defrouter %s\n", FUNC16(ifp),
	    FUNC17(&new->rtaddr)));

	FUNC15(&caltime);
	FUNC2(n);
	FUNC20(&n->rtaddr, &new->rtaddr, sizeof (n->rtaddr));
	n->flags = new->flags;
	n->stateflags = new->stateflags;
	n->rtlifetime = new->rtlifetime;
	n->expire = new->expire;
	n->base_calendartime = caltime.tv_sec;
	n->base_uptime = FUNC24();
	n->ifp = new->ifp;
	n->err = new->err;
	FUNC4(n);
insert:
	/* get nd6_service() to be scheduled as soon as it's convenient */
	++nd6_sched_timeout_want;

	/*
	 * Insert the new router in the Default Router List;
	 * The Default Router List should be in the descending order
	 * of router-preferece.  When Scoped Routing is disabled, routers
	 * with the same preference are sorted in the arriving time order;
	 * otherwise, the first entry in the list of routers having the same
	 * preference is the primary default router, when the interface used
	 * by the entry is the default interface.
	 */

	/* insert at the end of the group */
	for (dr = FUNC6(&nd_defrouter); dr;
	    dr = FUNC9(dr, dr_entry)) {
		if (FUNC25(n) > FUNC25(dr) ||
		    (!scoped && FUNC25(n) == FUNC25(dr)))
			break;
	}
	if (dr)
		FUNC7(dr, n, dr_entry);
	else
		FUNC8(&nd_defrouter, n, dr_entry);

	FUNC13(ifp);

	return (n);
}