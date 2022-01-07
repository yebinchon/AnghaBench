
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pf_ruleset {TYPE_3__* rules; } ;
struct TYPE_5__ {scalar_t__ ticket; } ;
struct TYPE_4__ {scalar_t__ ticket; int ptr; } ;
struct TYPE_6__ {TYPE_2__ inactive; TYPE_1__ active; } ;


 int pf_calc_skip_steps (int ) ;

__attribute__((used)) static void
pf_ruleset_cleanup(struct pf_ruleset *ruleset, int rs)
{
 pf_calc_skip_steps(ruleset->rules[rs].active.ptr);
 ruleset->rules[rs].active.ticket =
     ++ruleset->rules[rs].inactive.ticket;
}
