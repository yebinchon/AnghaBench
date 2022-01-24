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
struct TYPE_2__ {scalar_t__ le_next; scalar_t__ le_prev; } ;
struct secasvar {scalar_t__ refcnt; struct secasvar* iv; struct secasvar* lft_s; struct secasvar* lft_h; struct secasvar* lft_c; int /*<<< orphan*/ * replay; struct secasvar* sched; int /*<<< orphan*/  schedlen; struct secasvar* key_enc; struct secasvar* key_auth; TYPE_1__ spihash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct secasvar*,int /*<<< orphan*/ ) ; 
 struct secasvar* FUNC3 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC4 (struct secasvar*) ; 
 scalar_t__ FUNC5 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC6 (struct secasvar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  ipsec_sav_count ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 
 int /*<<< orphan*/  spihash ; 

void
FUNC9(
		   struct secasvar *sav)
{
	
	FUNC1(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	
	/* sanity check */
	if (sav == NULL)
		FUNC8("key_delsav: NULL pointer is passed.\n");
	
	if (sav->refcnt > 0)
		return;		/* can't free */
	
	/* remove from SA header */
	if (FUNC5(sav))
		FUNC2(sav, chain);
	ipsec_sav_count--;
	
	if (sav->spihash.le_prev || sav->spihash.le_next)
		FUNC2(sav, spihash);
	
	if (sav->key_auth != NULL) {
		FUNC6(FUNC3(sav->key_auth), FUNC4(sav->key_auth));
		FUNC0(sav->key_auth);
		sav->key_auth = NULL;
	}
	if (sav->key_enc != NULL) {
		FUNC6(FUNC3(sav->key_enc), FUNC4(sav->key_enc));
		FUNC0(sav->key_enc);
		sav->key_enc = NULL;
	}
	if (sav->sched) {
		FUNC6(sav->sched, sav->schedlen);
		FUNC0(sav->sched);
		sav->sched = NULL;
	}
	if (sav->replay != NULL) {
		FUNC7(sav->replay);
		sav->replay = NULL;
	}
	if (sav->lft_c != NULL) {
		FUNC0(sav->lft_c);
		sav->lft_c = NULL;
	}
	if (sav->lft_h != NULL) {
		FUNC0(sav->lft_h);
		sav->lft_h = NULL;
	}
	if (sav->lft_s != NULL) {
		FUNC0(sav->lft_s);
		sav->lft_s = NULL;
	}
	if (sav->iv != NULL) {
		FUNC0(sav->iv);
		sav->iv = NULL;
	}
	
	FUNC0(sav);
	
	return;
}