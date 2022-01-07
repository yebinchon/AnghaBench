
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int ndpr_genid; int ndpr_advrtrs; } ;
struct nd_pfxrouter {struct nd_defrouter* router; } ;
struct nd_defrouter {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_INSERT_HEAD (int *,struct nd_pfxrouter*,int ) ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_LOCK_ASSERT_NOTHELD (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int bzero (struct nd_pfxrouter*,int) ;
 int nd6_mutex ;
 int ndprtr_zone ;
 int pfr_entry ;
 int pfxlist_onlink_check () ;
 struct nd_pfxrouter* zalloc (int ) ;

__attribute__((used)) static void
pfxrtr_add(struct nd_prefix *pr, struct nd_defrouter *dr)
{
 struct nd_pfxrouter *new;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);
 NDPR_LOCK_ASSERT_NOTHELD(pr);

 new = zalloc(ndprtr_zone);
 if (new == ((void*)0))
  return;
 bzero(new, sizeof (*new));
 new->router = dr;

 NDPR_LOCK(pr);
 LIST_INSERT_HEAD(&pr->ndpr_advrtrs, new, pfr_entry);
 pr->ndpr_genid++;
 NDPR_UNLOCK(pr);

 pfxlist_onlink_check();
}
