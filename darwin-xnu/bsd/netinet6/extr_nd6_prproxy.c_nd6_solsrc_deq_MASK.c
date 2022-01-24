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
struct nd_prefix {int ndpr_stateflags; int /*<<< orphan*/  ndpr_prproxy_sols; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr taddr; } ;
struct nd6_prproxy_soltgt {scalar_t__ soltgt_cnt; int /*<<< orphan*/  soltgt_q; TYPE_1__ soltgt_key; } ;
struct nd6_prproxy_solsrc {struct ifnet* solsrc_ifp; struct in6_addr solsrc_saddr; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int NDPRF_IFSCOPE ; 
 int NDPRF_ONLINK ; 
 int NDPRF_PRPROXY ; 
 int /*<<< orphan*/  FUNC0 (struct nd_prefix*) ; 
 struct nd6_prproxy_soltgt* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nd6_prproxy_soltgt*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct nd6_prproxy_solsrc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nd6_prproxy_solsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nd6_prproxy_solsrc*) ; 
 int /*<<< orphan*/  prproxy_sols_tree ; 
 int /*<<< orphan*/  solsrc_tqe ; 

__attribute__((used)) static boolean_t
FUNC8(struct nd_prefix *pr, struct in6_addr *taddr,
    struct in6_addr *daddr, struct ifnet **ifp)
{
	struct nd6_prproxy_soltgt find, *soltgt;
	struct nd6_prproxy_solsrc *ssrc;

	FUNC0(pr);
	FUNC5(!(pr->ndpr_stateflags & NDPRF_IFSCOPE));
	FUNC5((pr->ndpr_stateflags & (NDPRF_ONLINK|NDPRF_PRPROXY)) ==
	    (NDPRF_ONLINK|NDPRF_PRPROXY));

	FUNC6(daddr, sizeof (*daddr));
	*ifp = NULL;

	find.soltgt_key.taddr = *taddr;		/* search key */

	soltgt = FUNC1(prproxy_sols_tree, &pr->ndpr_prproxy_sols, &find);
	if (soltgt == NULL || soltgt->soltgt_cnt == 0) {
		FUNC5(soltgt == NULL || FUNC2(&soltgt->soltgt_q));
		return (FALSE);
	}

	FUNC5(soltgt->soltgt_cnt != 0);
	--soltgt->soltgt_cnt;
	ssrc = FUNC3(&soltgt->soltgt_q);
	FUNC5(ssrc != NULL);
	FUNC4(&soltgt->soltgt_q, ssrc, solsrc_tqe);
	*daddr = *(&ssrc->solsrc_saddr);
	*ifp = ssrc->solsrc_ifp;
	FUNC7(ssrc);

	return (TRUE);
}