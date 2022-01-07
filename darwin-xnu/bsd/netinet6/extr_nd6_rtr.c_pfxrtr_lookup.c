
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nd_pfxrouter* lh_first; } ;
struct nd_prefix {TYPE_1__ ndpr_advrtrs; } ;
struct nd_pfxrouter {struct nd_defrouter* router; struct nd_pfxrouter* pfr_next; } ;
struct nd_defrouter {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NDPR_LOCK_ASSERT_HELD (struct nd_prefix*) ;
 int nd6_mutex ;

__attribute__((used)) static struct nd_pfxrouter *
pfxrtr_lookup(struct nd_prefix *pr, struct nd_defrouter *dr)
{
 struct nd_pfxrouter *search;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);
 NDPR_LOCK_ASSERT_HELD(pr);

 for (search = pr->ndpr_advrtrs.lh_first; search;
     search = search->pfr_next) {
  if (search->router == dr)
   break;
 }

 return (search);
}
