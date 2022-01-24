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
struct TYPE_2__ {int /*<<< orphan*/ * internal_if; } ;
struct secpolicy {scalar_t__ refcnt; struct ipsecrequest* req; int /*<<< orphan*/ * outgoing_if; int /*<<< orphan*/ * ipsec_if; TYPE_1__ spidx; int /*<<< orphan*/  state; } ;
struct ipsecrequest {struct ipsecrequest* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSEC_SPSTATE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct ipsecrequest*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct secpolicy*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct secpolicy*) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipsec_policy_count ; 
 int /*<<< orphan*/  FUNC5 (struct secpolicy*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 

__attribute__((used)) static void
FUNC7(
		  struct secpolicy *sp)
{
	
	/* sanity check */
	if (sp == NULL)
		FUNC6("key_delsp: NULL pointer is passed.\n");
	
	FUNC1(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	sp->state = IPSEC_SPSTATE_DEAD;
	
	if (sp->refcnt > 0)
		return; /* can't free */
	
	/* remove from SP index */
	if (FUNC3(sp)) {
		FUNC2(sp, chain);
		ipsec_policy_count--;
	}
	
    if (sp->spidx.internal_if) {
        FUNC4(sp->spidx.internal_if);
        sp->spidx.internal_if = NULL;
    }
    
    if (sp->ipsec_if) {
        FUNC4(sp->ipsec_if);
        sp->ipsec_if = NULL;
    }
    
    if (sp->outgoing_if) {
        FUNC4(sp->outgoing_if);
        sp->outgoing_if = NULL;
    }
	
    {
		struct ipsecrequest *isr = sp->req, *nextisr;
		
		while (isr != NULL) {
			nextisr = isr->next;
			FUNC0(isr);
			isr = nextisr;
    	}
	}
	FUNC5(sp);
	
	return;
}