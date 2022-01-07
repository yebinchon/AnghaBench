
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int ndpr_genid; } ;
struct nd_pfxrouter {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_REMOVE (struct nd_pfxrouter*,int ) ;
 int NDPR_LOCK_ASSERT_HELD (struct nd_prefix*) ;
 int nd6_mutex ;
 int ndprtr_zone ;
 int pfr_entry ;
 int zfree (int ,struct nd_pfxrouter*) ;

__attribute__((used)) static void
pfxrtr_del(struct nd_pfxrouter *pfr, struct nd_prefix *pr)
{
 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);
 NDPR_LOCK_ASSERT_HELD(pr);
 pr->ndpr_genid++;
 LIST_REMOVE(pfr, pfr_entry);
 zfree(ndprtr_zone, pfr);
}
