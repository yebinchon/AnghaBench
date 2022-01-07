
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtentry {struct llinfo_nd6* rt_llinfo; } ;
struct nd_prefix {unsigned int ndpr_genid; int ndpr_advrtrs; } ;
struct nd_pfxrouter {TYPE_1__* router; } ;
struct llinfo_nd6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int stateflags; struct in6_addr rtaddr; struct in6_addr rtaddr_mapped; struct ifnet* ifp; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct nd_pfxrouter* LIST_FIRST (int *) ;
 struct nd_pfxrouter* LIST_NEXT (struct nd_pfxrouter*,int ) ;
 scalar_t__ ND6_IS_LLINFO_PROBREACH (struct llinfo_nd6*) ;
 int NDDRF_MAPPED ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_LOCK_ASSERT_HELD (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 struct rtentry* nd6_lookup (struct in6_addr*,int ,struct ifnet*,int ) ;
 int nd6_mutex ;
 int pfr_entry ;

__attribute__((used)) static struct nd_pfxrouter *
find_pfxlist_reachable_router(struct nd_prefix *pr)
{
 struct nd_pfxrouter *pfxrtr;
 struct rtentry *rt;
 struct llinfo_nd6 *ln;
 struct ifnet *ifp;
 struct in6_addr rtaddr;
 unsigned int genid;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);
 NDPR_LOCK_ASSERT_HELD(pr);

 genid = pr->ndpr_genid;
 pfxrtr = LIST_FIRST(&pr->ndpr_advrtrs);
 while (pfxrtr) {
  ifp = pfxrtr->router->ifp;
  if (pfxrtr->router->stateflags & NDDRF_MAPPED)
   rtaddr = pfxrtr->router->rtaddr_mapped;
  else
   rtaddr = pfxrtr->router->rtaddr;

  NDPR_UNLOCK(pr);
  lck_mtx_unlock(nd6_mutex);

  if ((rt = nd6_lookup(&rtaddr, 0, ifp, 0)) != ((void*)0)) {
   RT_LOCK_ASSERT_HELD(rt);
   if ((ln = rt->rt_llinfo) != ((void*)0) &&
       ND6_IS_LLINFO_PROBREACH(ln)) {
    RT_REMREF_LOCKED(rt);
    RT_UNLOCK(rt);
    lck_mtx_lock(nd6_mutex);
    NDPR_LOCK(pr);
    break;
   }
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
  }
  lck_mtx_lock(nd6_mutex);
  NDPR_LOCK(pr);
  if (pr->ndpr_genid != genid) {
   pfxrtr = LIST_FIRST(&pr->ndpr_advrtrs);
   genid = pr->ndpr_genid;
  } else
   pfxrtr = LIST_NEXT(pfxrtr, pfr_entry);
 }
 NDPR_LOCK_ASSERT_HELD(pr);

 return (pfxrtr);

}
