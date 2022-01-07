
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct pf_ruleset {TYPE_3__* rules; } ;
struct pf_pool {int dummy; } ;
struct pf_rule {scalar_t__ nr; struct pf_pool rpool; } ;
struct TYPE_5__ {scalar_t__ ticket; int ptr; } ;
struct TYPE_4__ {scalar_t__ ticket; int ptr; } ;
struct TYPE_6__ {TYPE_2__ inactive; TYPE_1__ active; } ;


 int PF_RULESET_MAX ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_LAST (int ,int ) ;
 struct pf_rule* TAILQ_NEXT (struct pf_rule*,int ) ;
 int entries ;
 struct pf_ruleset* pf_find_ruleset (char*) ;
 int pf_get_ruleset_number (scalar_t__) ;
 int pf_rulequeue ;

__attribute__((used)) static struct pf_pool *
pf_get_pool(char *anchor, u_int32_t ticket, u_int8_t rule_action,
    u_int32_t rule_number, u_int8_t r_last, u_int8_t active,
    u_int8_t check_ticket)
{
 struct pf_ruleset *ruleset;
 struct pf_rule *rule;
 int rs_num;

 ruleset = pf_find_ruleset(anchor);
 if (ruleset == ((void*)0))
  return (((void*)0));
 rs_num = pf_get_ruleset_number(rule_action);
 if (rs_num >= PF_RULESET_MAX)
  return (((void*)0));
 if (active) {
  if (check_ticket && ticket !=
      ruleset->rules[rs_num].active.ticket)
   return (((void*)0));
  if (r_last)
   rule = TAILQ_LAST(ruleset->rules[rs_num].active.ptr,
       pf_rulequeue);
  else
   rule = TAILQ_FIRST(ruleset->rules[rs_num].active.ptr);
 } else {
  if (check_ticket && ticket !=
      ruleset->rules[rs_num].inactive.ticket)
   return (((void*)0));
  if (r_last)
   rule = TAILQ_LAST(ruleset->rules[rs_num].inactive.ptr,
       pf_rulequeue);
  else
   rule = TAILQ_FIRST(ruleset->rules[rs_num].inactive.ptr);
 }
 if (!r_last) {
  while ((rule != ((void*)0)) && (rule->nr != rule_number))
   rule = TAILQ_NEXT(rule, entries);
 }
 if (rule == ((void*)0))
  return (((void*)0));

 return (&rule->rpool);
}
