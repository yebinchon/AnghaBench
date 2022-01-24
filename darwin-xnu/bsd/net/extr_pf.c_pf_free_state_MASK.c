#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_6__* ptr; } ;
struct TYPE_8__ {TYPE_6__* ptr; } ;
struct TYPE_7__ {TYPE_6__* ptr; } ;
struct pf_state {scalar_t__ timeout; scalar_t__ tag; int /*<<< orphan*/  kif; TYPE_3__ anchor; TYPE_2__ nat_rule; TYPE_1__ rule; } ;
struct TYPE_12__ {scalar_t__ states; scalar_t__ src_nodes; } ;
struct TYPE_11__ {scalar_t__ states; int /*<<< orphan*/ * fcounters; } ;
struct TYPE_10__ {struct pf_state* sc_bulk_terminator; struct pf_state* sc_bulk_send_next; } ;

/* Variables and functions */
 size_t FCNT_STATE_REMOVALS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PFI_KIF_REF_STATE ; 
 scalar_t__ PFTM_UNLINKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  entry_list ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC3 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  pf_state_pl ; 
 TYPE_5__ pf_status ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* pfsyncif ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct pf_state*) ; 
 int /*<<< orphan*/  state_list ; 

void
FUNC8(struct pf_state *cur)
{
	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);
#if NPFSYNC
	if (pfsyncif != NULL &&
	    (pfsyncif->sc_bulk_send_next == cur ||
	    pfsyncif->sc_bulk_terminator == cur))
		return;
#endif
	FUNC2(cur->timeout == PFTM_UNLINKED);
	FUNC2(cur->rule.ptr->states > 0);
	if (--cur->rule.ptr->states <= 0 &&
	    cur->rule.ptr->src_nodes <= 0)
		FUNC4(NULL, cur->rule.ptr);
	if (cur->nat_rule.ptr != NULL) {
		FUNC2(cur->nat_rule.ptr->states > 0);
		if (--cur->nat_rule.ptr->states <= 0 &&
		    cur->nat_rule.ptr->src_nodes <= 0)
			FUNC4(NULL, cur->nat_rule.ptr);
	}
	if (cur->anchor.ptr != NULL) {
		FUNC2(cur->anchor.ptr->states > 0);
		if (--cur->anchor.ptr->states <= 0)
			FUNC4(NULL, cur->anchor.ptr);
	}
	FUNC3(cur);
	FUNC6(cur->kif, PFI_KIF_REF_STATE);
	FUNC1(&state_list, cur, entry_list);
	if (cur->tag)
		FUNC5(cur->tag);
	FUNC7(&pf_state_pl, cur);
	pf_status.fcounters[FCNT_STATE_REMOVALS]++;
	FUNC2(pf_status.states > 0);
	pf_status.states--;
}