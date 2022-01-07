
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pf_ruleset {TYPE_3__* rules; } ;
struct TYPE_5__ {int * ptr; } ;
struct TYPE_4__ {int * ptr; } ;
struct TYPE_6__ {int * queues; TYPE_2__ inactive; TYPE_1__ active; } ;


 int PF_RULESET_MAX ;
 int TAILQ_INIT (int *) ;
 int memset (struct pf_ruleset*,int ,int) ;

void
pf_init_ruleset(struct pf_ruleset *ruleset)
{
 int i;

 memset(ruleset, 0, sizeof (struct pf_ruleset));
 for (i = 0; i < PF_RULESET_MAX; i++) {
  TAILQ_INIT(&ruleset->rules[i].queues[0]);
  TAILQ_INIT(&ruleset->rules[i].queues[1]);
  ruleset->rules[i].active.ptr = &ruleset->rules[i].queues[0];
  ruleset->rules[i].inactive.ptr = &ruleset->rules[i].queues[1];
 }
}
