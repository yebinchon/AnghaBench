
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct rtentry {int rt_flags; struct ifnet* rt_ifp; int rt_gateway; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {struct in6_addr sin6_addr; } ;
struct route_in6 {struct rtentry* ro_rt; TYPE_3__ ro_dst; } ;
struct TYPE_4__ {int sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; scalar_t__ ndpr_plen; struct ifnet* ndpr_ifp; TYPE_1__ ndpr_prefix; struct nd_prefix* ndpr_next; int ndpr_mask; } ;
struct ifnet {int if_index; } ;
typedef int pr_addr ;
struct TYPE_5__ {struct nd_prefix* lh_first; } ;


 int IFSCOPE_NONE ;
 int IN6_ARE_MASKED_ADDR_EQUAL (int *,struct in6_addr*,int *) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int NDPRF_IFSCOPE ;
 int NDPRF_ONLINK ;
 int NDPRF_PRPROXY ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int ROUTE_RELEASE_LOCKED (struct route_in6*) ;
 int RTF_CLONING ;
 int RTF_CONDEMNED ;
 int RTF_PRCLONING ;
 int RTF_PROXY ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int SA (TYPE_3__*) ;
 int VERIFY (int) ;
 int bcopy (int *,struct in6_addr*,int) ;
 int if_name (struct ifnet*) ;
 int in6_are_prefix_equal (int *,struct in6_addr*,scalar_t__) ;
 int ip6_sprintf (struct in6_addr*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_mutex ;
 int nd6log2 (int ) ;
 TYPE_2__ nd_prefix ;
 int rnh_lock ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 struct rtentry* rtalloc1_scoped_locked (int ,int,int,int ) ;
 int rtfree_locked (struct rtentry*) ;
 int rtrequest_locked (int ,int ,int ,int ,int,int *) ;

void
nd6_proxy_find_fwdroute(struct ifnet *ifp, struct route_in6 *ro6)
{
 struct in6_addr *dst6 = &ro6->ro_dst.sin6_addr;
 struct ifnet *fwd_ifp = ((void*)0);
 struct nd_prefix *pr;
 struct rtentry *rt;

 if ((rt = ro6->ro_rt) != ((void*)0)) {
  RT_LOCK(rt);
  if (!(rt->rt_flags & RTF_PROXY) || rt->rt_ifp == ifp) {
   nd6log2((LOG_DEBUG, "%s: found incorrect prefix "
       "proxy route for dst %s on %s\n", if_name(ifp),
       ip6_sprintf(dst6),
       if_name(rt->rt_ifp)));
   RT_UNLOCK(rt);

  } else {
   RT_UNLOCK(rt);





   return;
  }
 }
 lck_mtx_lock(nd6_mutex);
 for (pr = nd_prefix.lh_first; pr; pr = pr->ndpr_next) {
  struct in6_addr pr_addr;
  struct nd_prefix *fwd;
  u_char pr_len;

  NDPR_LOCK(pr);
  if (!(pr->ndpr_stateflags & NDPRF_ONLINK) ||
      !(pr->ndpr_stateflags & NDPRF_PRPROXY) ||
      !IN6_ARE_MASKED_ADDR_EQUAL(&pr->ndpr_prefix.sin6_addr,
      dst6, &pr->ndpr_mask)) {
   NDPR_UNLOCK(pr);
   continue;
  }

  VERIFY(!(pr->ndpr_stateflags & NDPRF_IFSCOPE));
  bcopy(&pr->ndpr_prefix.sin6_addr, &pr_addr, sizeof (pr_addr));
  pr_len = pr->ndpr_plen;
  NDPR_UNLOCK(pr);

  for (fwd = nd_prefix.lh_first; fwd; fwd = fwd->ndpr_next) {
   NDPR_LOCK(fwd);
   if (!(fwd->ndpr_stateflags & NDPRF_ONLINK) ||
       fwd->ndpr_ifp == ifp ||
       fwd->ndpr_plen != pr_len ||
       !in6_are_prefix_equal(&fwd->ndpr_prefix.sin6_addr,
       &pr_addr, pr_len)) {
    NDPR_UNLOCK(fwd);
    continue;
   }

   fwd_ifp = fwd->ndpr_ifp;
   NDPR_UNLOCK(fwd);
   break;
  }
  break;
 }
 lck_mtx_unlock(nd6_mutex);

 lck_mtx_lock(rnh_lock);
 ROUTE_RELEASE_LOCKED(ro6);






 if ((rt = rtalloc1_scoped_locked(SA(&ro6->ro_dst), 0,
     RTF_CLONING | RTF_PRCLONING, IFSCOPE_NONE)) != ((void*)0)) {
  RT_LOCK(rt);
  if (rt->rt_ifp != fwd_ifp || !(rt->rt_flags & RTF_PROXY)) {
   rt->rt_flags |= RTF_CONDEMNED;
   RT_UNLOCK(rt);
   (void) rtrequest_locked(RTM_DELETE, rt_key(rt),
       rt->rt_gateway, rt_mask(rt), rt->rt_flags, ((void*)0));
   rtfree_locked(rt);
   rt = ((void*)0);
  } else {
   nd6log2((LOG_DEBUG, "%s: found prefix proxy route "
       "for dst %s\n", if_name(rt->rt_ifp),
       ip6_sprintf(dst6)));
   RT_UNLOCK(rt);
   ro6->ro_rt = rt;
   lck_mtx_unlock(rnh_lock);
   return;
  }
 }
 VERIFY(rt == ((void*)0) && ro6->ro_rt == ((void*)0));




 if (fwd_ifp != ((void*)0) && (rt = rtalloc1_scoped_locked(SA(&ro6->ro_dst), 1,
     RTF_PRCLONING, fwd_ifp->if_index)) != ((void*)0)) {
  RT_LOCK(rt);
  if (!(rt->rt_flags & RTF_PROXY)) {
   RT_UNLOCK(rt);
   rtfree_locked(rt);
   rt = ((void*)0);
  } else {
   nd6log2((LOG_DEBUG, "%s: allocated prefix proxy "
       "route for dst %s\n", if_name(rt->rt_ifp),
       ip6_sprintf(dst6)));
   RT_UNLOCK(rt);
   ro6->ro_rt = rt;
  }
 }
 VERIFY(rt != ((void*)0) || ro6->ro_rt == ((void*)0));

 if (fwd_ifp == ((void*)0) || rt == ((void*)0)) {
  nd6log2((LOG_ERR, "%s: failed to find forwarding prefix "
      "proxy entry for dst %s\n", if_name(ifp),
      ip6_sprintf(dst6)));
 }
 lck_mtx_unlock(rnh_lock);
}
