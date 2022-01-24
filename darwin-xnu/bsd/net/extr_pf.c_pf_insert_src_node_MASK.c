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
struct TYPE_7__ {struct pf_rule* ptr; } ;
struct pf_src_node {scalar_t__ states; TYPE_3__ rule; int /*<<< orphan*/  ruletype; int /*<<< orphan*/  creation; int /*<<< orphan*/  addr; void* af; int /*<<< orphan*/  conn_rate; } ;
struct TYPE_6__ {int opts; } ;
struct TYPE_5__ {int /*<<< orphan*/  seconds; int /*<<< orphan*/  limit; } ;
struct pf_rule {int rule_flag; scalar_t__ max_src_nodes; scalar_t__ src_nodes; scalar_t__ max_src_states; int /*<<< orphan*/  action; TYPE_2__ rpool; TYPE_1__ max_src_conn_rate; } ;
struct pf_addr {int dummy; } ;
typedef  void* sa_family_t ;
struct TYPE_8__ {scalar_t__ debug; int /*<<< orphan*/ * lcounters; int /*<<< orphan*/  src_nodes; int /*<<< orphan*/ * scounters; } ;

/* Variables and functions */
 size_t LCNT_SRCNODES ; 
 size_t LCNT_SRCSTATES ; 
 int PFRULE_RULESRCTRACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pf_addr*,void*) ; 
 scalar_t__ PF_DEBUG_MISC ; 
 int PF_POOL_STICKYADDR ; 
 int /*<<< orphan*/  PR_WAITOK ; 
 struct pf_src_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_src_node*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_src_node*) ; 
 size_t SCNT_SRC_NODE_INSERT ; 
 size_t SCNT_SRC_NODE_SEARCH ; 
 int /*<<< orphan*/  FUNC3 (struct pf_src_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  pf_src_tree ; 
 int /*<<< orphan*/  pf_src_tree_pl ; 
 TYPE_4__ pf_status ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct pf_src_node* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pf_src_node*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  tree_src_tracking ; 

int
FUNC10(struct pf_src_node **sn, struct pf_rule *rule,
    struct pf_addr *src, sa_family_t af)
{
	struct pf_src_node	k;

	if (*sn == NULL) {
		k.af = af;
		FUNC0(&k.addr, src, af);
		if (rule->rule_flag & PFRULE_RULESRCTRACK ||
		    rule->rpool.opts & PF_POOL_STICKYADDR)
			k.rule.ptr = rule;
		else
			k.rule.ptr = NULL;
		pf_status.scounters[SCNT_SRC_NODE_SEARCH]++;
		*sn = FUNC1(pf_src_tree, &tree_src_tracking, &k);
	}
	if (*sn == NULL) {
		if (!rule->max_src_nodes ||
		    rule->src_nodes < rule->max_src_nodes)
			(*sn) = FUNC7(&pf_src_tree_pl, PR_WAITOK);
		else
			pf_status.lcounters[LCNT_SRCNODES]++;
		if ((*sn) == NULL)
			return (-1);
		FUNC3(*sn, sizeof (struct pf_src_node));

		FUNC4(&(*sn)->conn_rate,
		    rule->max_src_conn_rate.limit,
		    rule->max_src_conn_rate.seconds);

		(*sn)->af = af;
		if (rule->rule_flag & PFRULE_RULESRCTRACK ||
		    rule->rpool.opts & PF_POOL_STICKYADDR)
			(*sn)->rule.ptr = rule;
		else
			(*sn)->rule.ptr = NULL;
		FUNC0(&(*sn)->addr, src, af);
		if (FUNC2(pf_src_tree,
		    &tree_src_tracking, *sn) != NULL) {
			if (pf_status.debug >= PF_DEBUG_MISC) {
				FUNC9("pf: src_tree insert failed: ");
				FUNC5(&(*sn)->addr, 0, af);
				FUNC9("\n");
			}
			FUNC8(&pf_src_tree_pl, *sn);
			return (-1);
		}
		(*sn)->creation = FUNC6();
		(*sn)->ruletype = rule->action;
		if ((*sn)->rule.ptr != NULL)
			(*sn)->rule.ptr->src_nodes++;
		pf_status.scounters[SCNT_SRC_NODE_INSERT]++;
		pf_status.src_nodes++;
	} else {
		if (rule->max_src_states &&
		    (*sn)->states >= rule->max_src_states) {
			pf_status.lcounters[LCNT_SRCSTATES]++;
			return (-1);
		}
	}
	return (0);
}