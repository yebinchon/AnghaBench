#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int32_t ;
struct pf_ruleset {TYPE_3__* rules; } ;
struct pf_pool {int dummy; } ;
struct pf_rule {scalar_t__ nr; struct pf_pool rpool; } ;
struct TYPE_5__ {scalar_t__ ticket; int /*<<< orphan*/  ptr; } ;
struct TYPE_4__ {scalar_t__ ticket; int /*<<< orphan*/  ptr; } ;
struct TYPE_6__ {TYPE_2__ inactive; TYPE_1__ active; } ;

/* Variables and functions */
 int PF_RULESET_MAX ; 
 struct pf_rule* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pf_rule* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pf_rule* FUNC2 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 struct pf_ruleset* FUNC3 (char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  pf_rulequeue ; 

__attribute__((used)) static struct pf_pool *
FUNC5(char *anchor, u_int32_t ticket, u_int8_t rule_action,
    u_int32_t rule_number, u_int8_t r_last, u_int8_t active,
    u_int8_t check_ticket)
{
	struct pf_ruleset	*ruleset;
	struct pf_rule		*rule;
	int			 rs_num;

	ruleset = FUNC3(anchor);
	if (ruleset == NULL)
		return (NULL);
	rs_num = FUNC4(rule_action);
	if (rs_num >= PF_RULESET_MAX)
		return (NULL);
	if (active) {
		if (check_ticket && ticket !=
		    ruleset->rules[rs_num].active.ticket)
			return (NULL);
		if (r_last)
			rule = FUNC1(ruleset->rules[rs_num].active.ptr,
			    pf_rulequeue);
		else
			rule = FUNC0(ruleset->rules[rs_num].active.ptr);
	} else {
		if (check_ticket && ticket !=
		    ruleset->rules[rs_num].inactive.ticket)
			return (NULL);
		if (r_last)
			rule = FUNC1(ruleset->rules[rs_num].inactive.ptr,
			    pf_rulequeue);
		else
			rule = FUNC0(ruleset->rules[rs_num].inactive.ptr);
	}
	if (!r_last) {
		while ((rule != NULL) && (rule->nr != rule_number))
			rule = FUNC2(rule, entries);
	}
	if (rule == NULL)
		return (NULL);

	return (&rule->rpool);
}