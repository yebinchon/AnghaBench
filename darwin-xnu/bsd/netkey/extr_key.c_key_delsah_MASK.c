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
typedef  size_t u_int ;
struct secasvar {scalar_t__ refcnt; int /*<<< orphan*/ * sah; int /*<<< orphan*/  state; } ;
struct secashead {struct secashead* identd; struct secashead* idents; int /*<<< orphan*/ * ipsec_if; int /*<<< orphan*/  sa_route; int /*<<< orphan*/ * savtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KEY_SADB_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct secashead*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct secasvar* FUNC4 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct secashead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (size_t*) ; 
 scalar_t__ FUNC8 (struct secashead*) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 
 size_t* saorder_state_any ; 

void
FUNC12(
		   struct secashead *sah)
{
	struct secasvar *sav, *nextsav;
	u_int stateidx, state;
	int zombie = 0;
	
	FUNC2(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	
	/* sanity check */
	if (sah == NULL)
		FUNC11("key_delsah: NULL pointer is passed.\n");
	
	/* searching all SA registerd in the secindex. */
	for (stateidx = 0;
	     stateidx < FUNC7(saorder_state_any);
	     stateidx++) {
		
		state = saorder_state_any[stateidx];
		for (sav = (struct secasvar *)FUNC3(&sah->savtree[state]);
		     sav != NULL;
		     sav = nextsav) {
			
			nextsav = FUNC4(sav, chain);
			
			if (sav->refcnt > 0) {
				/* give up to delete this sa */
				zombie++;
				continue;
			}
			
			/* sanity check */
			FUNC0(state, sav->state, "key_delsah");
			
			FUNC10(sav, KEY_SADB_LOCKED);
			
			/* remove back pointer */
			sav->sah = NULL;
			sav = NULL;
		}
	}
	
	/* don't delete sah only if there are savs. */
	if (zombie)
		return;
	
	FUNC6(&sah->sa_route);
    
	if (sah->ipsec_if) {
		FUNC9(sah->ipsec_if);
		sah->ipsec_if = NULL;
	}
	
    if (sah->idents) {
        FUNC1(sah->idents);
    }
    
    if (sah->identd) {
        FUNC1(sah->identd);
    }
	
	/* remove from tree of SA index */
	if (FUNC8(sah))
		FUNC5(sah, chain);
	
	FUNC1(sah);
	
	return;
}