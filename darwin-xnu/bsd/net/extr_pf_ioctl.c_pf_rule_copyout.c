
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tqe_next; int * tqe_prev; } ;
struct TYPE_4__ {int * cur; int list; } ;
struct pf_rule {TYPE_1__ entries; TYPE_2__ rpool; int * overload_tbl; int * kif; int * anchor; } ;


 int TAILQ_INIT (int *) ;
 int bcopy (struct pf_rule*,struct pf_rule*,int) ;

__attribute__((used)) static void
pf_rule_copyout(struct pf_rule *src, struct pf_rule *dst)
{
 bcopy(src, dst, sizeof (struct pf_rule));

 dst->anchor = ((void*)0);
 dst->kif = ((void*)0);
 dst->overload_tbl = ((void*)0);

 TAILQ_INIT(&dst->rpool.list);
 dst->rpool.cur = ((void*)0);

 dst->entries.tqe_prev = ((void*)0);
 dst->entries.tqe_next = ((void*)0);
}
