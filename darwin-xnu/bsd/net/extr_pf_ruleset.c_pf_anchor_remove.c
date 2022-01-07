
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pf_rule {TYPE_1__* anchor; } ;
struct TYPE_2__ {scalar_t__ refcnt; int ruleset; } ;


 int pf_remove_if_empty_ruleset (int *) ;
 int printf (char*) ;

void
pf_anchor_remove(struct pf_rule *r)
{
 if (r->anchor == ((void*)0))
  return;
 if (r->anchor->refcnt <= 0) {
  printf("pf_anchor_remove: broken refcount\n");
  r->anchor = ((void*)0);
  return;
 }
 if (!--r->anchor->refcnt)
  pf_remove_if_empty_ruleset(&r->anchor->ruleset);
 r->anchor = ((void*)0);
}
