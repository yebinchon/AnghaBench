
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct pf_rule* ptr; } ;
struct pf_state {int * rt_kif; int nat_src_node; int rt_addr; TYPE_3__ rule; } ;
struct TYPE_5__ {TYPE_1__* cur; } ;
struct pf_rule {scalar_t__ rt; TYPE_2__ rpool; } ;
struct pf_addr {int dummy; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_4__ {int * kif; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ PF_FASTROUTE ;
 int pf_map_addr (scalar_t__,struct pf_rule*,struct pf_addr*,int *,int *,int *) ;

__attribute__((used)) static void
pf_set_rt_ifp(struct pf_state *s, struct pf_addr *saddr, sa_family_t af)
{
 struct pf_rule *r = s->rule.ptr;

 s->rt_kif = ((void*)0);

 if (!r->rt || r->rt == PF_FASTROUTE)
  return;
 if ((af == AF_INET) || (af == AF_INET6)) {
  pf_map_addr(af, r, saddr, &s->rt_addr, ((void*)0),
      &s->nat_src_node);
  s->rt_kif = r->rpool.cur->kif;
 }

 return;
}
