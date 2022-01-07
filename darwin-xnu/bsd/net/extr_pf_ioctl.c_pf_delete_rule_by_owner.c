
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct pf_ruleset {TYPE_3__* rules; } ;
struct pf_rule {int rule_flag; int owner; TYPE_1__* anchor; } ;
struct TYPE_5__ {scalar_t__ rcount; int ptr; } ;
struct TYPE_6__ {TYPE_2__ active; } ;
struct TYPE_4__ {struct pf_ruleset ruleset; } ;


 int PFRULE_PFM ;
 int PF_RULESET_MAX ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_NEXT (struct pf_rule*,int ) ;
 int entries ;
 int pf_delete_rule_from_ruleset (struct pf_ruleset*,int,struct pf_rule*) ;
 int pf_deleterule_anchor_step_out (struct pf_ruleset**,int,struct pf_rule**) ;
 struct pf_ruleset pf_main_ruleset ;
 int pf_ruleset_cleanup (struct pf_ruleset*,int) ;
 int pffwrules ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
pf_delete_rule_by_owner(char *owner, u_int32_t req_dev)
{
 struct pf_ruleset *ruleset;
 struct pf_rule *rule, *next;
 int deleted = 0;

 for (int rs = 0; rs < PF_RULESET_MAX; rs++) {
  rule = TAILQ_FIRST(pf_main_ruleset.rules[rs].active.ptr);
  ruleset = &pf_main_ruleset;
  while (rule) {
   next = TAILQ_NEXT(rule, entries);




   if ((rule->rule_flag & PFRULE_PFM) ^ req_dev) {
    rule = next;
    continue;
   }
   if (rule->anchor) {
    if (((strcmp(rule->owner, owner)) == 0) ||
        ((strcmp(rule->owner, "")) == 0)) {
     if (rule->anchor->ruleset.rules[rs].active.rcount > 0) {
      if (deleted) {
       pf_ruleset_cleanup(ruleset, rs);
       deleted = 0;
      }

      ruleset =
          &rule->anchor->ruleset;
      rule = TAILQ_FIRST(ruleset->rules[rs].active.ptr);
      continue;
     } else {
      if (rule->rule_flag &
          PFRULE_PFM)
       pffwrules--;
      pf_delete_rule_from_ruleset(ruleset, rs, rule);
      deleted = 1;
      rule = next;
     }
    } else
     rule = next;
   } else {
    if (((strcmp(rule->owner, owner)) == 0)) {

     if (rule->rule_flag & PFRULE_PFM)
      pffwrules--;
     pf_delete_rule_from_ruleset(ruleset,
         rs, rule);
     deleted = 1;
    }
    rule = next;
   }
   if (rule == ((void*)0)) {
    if (deleted) {
     pf_ruleset_cleanup(ruleset, rs);
     deleted = 0;
    }
    if (ruleset != &pf_main_ruleset)
     pf_deleterule_anchor_step_out(&ruleset,
         rs, &rule);
   }
  }
 }
}
