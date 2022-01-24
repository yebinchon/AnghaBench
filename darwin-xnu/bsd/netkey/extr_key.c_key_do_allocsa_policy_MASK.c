#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_int16_t ;
typedef  size_t u_int ;
struct secasvar {int flags; scalar_t__ remote_ike_port; int refcnt; TYPE_2__* lft_c; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct secashead {TYPE_1__ saidx; int /*<<< orphan*/ * savtree; } ;
struct TYPE_4__ {scalar_t__ sadb_lifetime_addtime; } ;

/* Variables and functions */
 scalar_t__ IPSEC_MODE_TRANSPORT ; 
 scalar_t__ IPSEC_MODE_TUNNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYDEBUG_IPSEC_STAMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 struct secasvar* FUNC3 (int /*<<< orphan*/ *) ; 
 struct secasvar* FUNC4 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int SADB_X_EXT_NATT ; 
 int SADB_X_EXT_NATT_MULTIPLEUSERS ; 
 scalar_t__ FUNC5 (struct secasvar*) ; 
 int /*<<< orphan*/  chain ; 
 scalar_t__ key_preferred_oldsa ; 
 int /*<<< orphan*/  FUNC6 (struct secasvar*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

__attribute__((used)) static struct secasvar *
FUNC10(
					  struct secashead *sah,
					  u_int state,
					  u_int16_t dstport)
{
	struct secasvar *sav, *nextsav, *candidate, *natt_candidate, *no_natt_candidate, *d;
	
	FUNC2(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	
	/* initialize */
	candidate = NULL;
	natt_candidate = NULL;
	no_natt_candidate = NULL;
	
	for (sav = FUNC3(&sah->savtree[state]);
	     sav != NULL;
	     sav = nextsav) {
		
		nextsav = FUNC4(sav, chain);
		
		/* sanity check */
		FUNC1(sav->state, state, "key_do_allocsa_policy");
		
		if (sah->saidx.mode == IPSEC_MODE_TUNNEL && dstport &&
		    ((sav->flags & SADB_X_EXT_NATT) != 0) &&
		    FUNC7(dstport) != sav->remote_ike_port)
			continue;
		
		if (sah->saidx.mode == IPSEC_MODE_TRANSPORT &&
		    ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0) &&
		    FUNC7(dstport) != sav->remote_ike_port)
			continue;	/* skip this one - not a match - or not UDP */
		
		if ((sah->saidx.mode == IPSEC_MODE_TUNNEL &&
		     ((sav->flags & SADB_X_EXT_NATT) != 0)) ||
		    (sah->saidx.mode == IPSEC_MODE_TRANSPORT &&
		     ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0))) {
				if (natt_candidate == NULL) {
					natt_candidate = sav;
					continue;
				} else
					candidate = natt_candidate;
			} else {
				if (no_natt_candidate == NULL) {
					no_natt_candidate = sav;
					continue;
				} else
					candidate = no_natt_candidate;
			}
		
		/* Which SA is the better ? */
		
		/* sanity check 2 */
		if (candidate->lft_c == NULL || sav->lft_c == NULL)
			FUNC8("key_do_allocsa_policy: "
				  "lifetime_current is NULL.\n");
		
		/* What the best method is to compare ? */
		if (key_preferred_oldsa) {
			if (candidate->lft_c->sadb_lifetime_addtime >
				sav->lft_c->sadb_lifetime_addtime) {
				if ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0)
					natt_candidate = sav;
				else
					no_natt_candidate = sav;
			}
			continue;
			/*NOTREACHED*/
		}
		
		/* prefered new sa rather than old sa */
		if (candidate->lft_c->sadb_lifetime_addtime <
			sav->lft_c->sadb_lifetime_addtime) {
			d = candidate;
			if ((sah->saidx.mode == IPSEC_MODE_TUNNEL &&
				 ((sav->flags & SADB_X_EXT_NATT) != 0)) ||
				(sah->saidx.mode == IPSEC_MODE_TRANSPORT &&
				 ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0))) {
				natt_candidate = sav;
			} else {
				no_natt_candidate = sav;
			}
		} else {
			d = sav;
		}
		
		/*
		 * prepared to delete the SA when there is more
		 * suitable candidate and the lifetime of the SA is not
		 * permanent.
		 */
		if (d->lft_c->sadb_lifetime_addtime != 0) {
			FUNC6(d);
		}
	}
	
	/* choose latest if both types present */
	if (natt_candidate == NULL)
		candidate = no_natt_candidate;
	else if (no_natt_candidate == NULL)
		candidate = natt_candidate;
	else if (sah->saidx.mode == IPSEC_MODE_TUNNEL && dstport)
		candidate = natt_candidate;
	else if (natt_candidate->lft_c->sadb_lifetime_addtime >
			 no_natt_candidate->lft_c->sadb_lifetime_addtime)
		candidate = natt_candidate;
	else
		candidate = no_natt_candidate;
	
	if (candidate) {
		candidate->refcnt++;
		FUNC0(KEYDEBUG_IPSEC_STAMP,
		    FUNC9("DP allocsa_policy cause "
		    "refcnt++:%d SA:0x%llx\n", candidate->refcnt,
		    (uint64_t)FUNC5(candidate)));
	}
	return candidate;
}