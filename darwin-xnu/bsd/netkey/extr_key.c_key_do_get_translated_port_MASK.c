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
typedef  size_t u_int ;
struct secasvar {int flags; scalar_t__ remote_ike_port; int /*<<< orphan*/  natt_encapsulated_src_port; TYPE_1__* lft_c; int /*<<< orphan*/  state; } ;
struct secashead {int /*<<< orphan*/ * savtree; } ;
struct TYPE_2__ {scalar_t__ sadb_lifetime_addtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 struct secasvar* FUNC2 (int /*<<< orphan*/ *) ; 
 struct secasvar* FUNC3 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int SADB_X_EXT_NATT_MULTIPLEUSERS ; 
 int /*<<< orphan*/  chain ; 
 scalar_t__ key_preferred_oldsa ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 

__attribute__((used)) static int
FUNC5(
						   struct secashead *sah,
						   struct secasvar *outsav,
						   u_int state)
{
	struct secasvar *currsav, *nextsav, *candidate;
	
	
	FUNC1(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	
	/* initilize */
	candidate = NULL;
	
	for (currsav = FUNC2(&sah->savtree[state]);
	     currsav != NULL;
	     currsav = nextsav) {
		
		nextsav = FUNC3(currsav, chain);
		
		/* sanity check */
		FUNC0(currsav->state, state, "key_do_get_translated_port");
		
		if ((currsav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) == 0 ||
			currsav->remote_ike_port != outsav->remote_ike_port)
			continue;
		
		if (candidate == NULL) {
			candidate = currsav;
			continue;
		}
		
		/* Which SA is the better ? */
		
		/* sanity check 2 */
		if (candidate->lft_c == NULL || currsav->lft_c == NULL)
			FUNC4("key_do_get_translated_port: "
				  "lifetime_current is NULL.\n");
		
		/* What the best method is to compare ? */
		if (key_preferred_oldsa) {
			if (candidate->lft_c->sadb_lifetime_addtime >
				currsav->lft_c->sadb_lifetime_addtime) {
				candidate = currsav;
			}
			continue;
			/*NOTREACHED*/
		}
		
		/* prefered new sa rather than old sa */
		if (candidate->lft_c->sadb_lifetime_addtime <
			currsav->lft_c->sadb_lifetime_addtime)
			candidate = currsav;
	}
	
	if (candidate) {
		outsav->natt_encapsulated_src_port = candidate->natt_encapsulated_src_port;
		return 1;
	}
	
	return 0;
}