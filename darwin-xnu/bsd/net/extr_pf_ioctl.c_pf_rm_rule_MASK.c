#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pf_rulequeue {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  list; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tqe_prev; } ;
struct pf_rule {scalar_t__ states; int nr; scalar_t__ src_nodes; TYPE_4__ rpool; int /*<<< orphan*/  kif; scalar_t__ overload_tbl; TYPE_3__ dst; TYPE_2__ src; int /*<<< orphan*/  match_tag; int /*<<< orphan*/  tag; TYPE_1__ entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFI_KIF_REF_RULE ; 
 int /*<<< orphan*/  FUNC0 (struct pf_rulequeue*,struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC1 (struct pf_rule*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pf_rule_pl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct pf_rule*) ; 

void
FUNC10(struct pf_rulequeue *rulequeue, struct pf_rule *rule)
{
	if (rulequeue != NULL) {
		if (rule->states <= 0) {
			/*
			 * XXX - we need to remove the table *before* detaching
			 * the rule to make sure the table code does not delete
			 * the anchor under our feet.
			 */
			FUNC5(&rule->src.addr);
			FUNC5(&rule->dst.addr);
			if (rule->overload_tbl)
				FUNC8(rule->overload_tbl);
		}
		FUNC0(rulequeue, rule, entries);
		rule->entries.tqe_prev = NULL;
		rule->nr = -1;
	}

	if (rule->states > 0 || rule->src_nodes > 0 ||
	    rule->entries.tqe_prev != NULL)
		return;
	FUNC4(rule->tag);
	FUNC4(rule->match_tag);
	FUNC3(&rule->src.addr);
	FUNC3(&rule->dst.addr);
	FUNC6(&rule->src.addr);
	FUNC6(&rule->dst.addr);
	if (rulequeue == NULL) {
		FUNC5(&rule->src.addr);
		FUNC5(&rule->dst.addr);
		if (rule->overload_tbl)
			FUNC8(rule->overload_tbl);
	}
	FUNC7(rule->kif, PFI_KIF_REF_RULE);
	FUNC1(rule);
	FUNC2(&rule->rpool.list);
	FUNC9(&pf_rule_pl, rule);
}