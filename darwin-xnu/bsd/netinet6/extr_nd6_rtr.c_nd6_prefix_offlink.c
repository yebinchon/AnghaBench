
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_addr; void* sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;
struct nd_prefix {int ndpr_stateflags; int ndpr_plen; scalar_t__ ndpr_prproxy_sols_cnt; int ndpr_prproxy_sols; struct rtentry* ndpr_rt; struct sockaddr_in6 ndpr_prefix; int ndpr_mask; struct ifnet* ndpr_ifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {unsigned int if_index; } ;
typedef int sa6 ;
typedef int mask6 ;


 void* AF_INET6 ;
 int EEXIST ;
 unsigned int IFSCOPE_NONE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LOG_ERR ;
 int NDPRF_IFSCOPE ;
 int NDPRF_ONLINK ;
 int NDPRF_PRPROXY ;
 int NDPR_ADDREF_LOCKED (struct nd_prefix*) ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_REMREF (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int RB_EMPTY (int *) ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int VERIFY (int) ;
 int bcopy (int *,int *,int) ;
 int bzero (struct sockaddr_in6*,int) ;
 int if_name (struct ifnet*) ;
 int ip6_sprintf (int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nd6_mutex ;
 int nd6_prproxy_prelist_update (struct nd_prefix*,struct nd_prefix*) ;
 int nd6_prproxy_sols_reap (struct nd_prefix*) ;
 int nd6_rtmsg (int ,struct rtentry*) ;
 int nd6log (int ) ;
 int proxy6_lock ;
 int rtfree (struct rtentry*) ;
 int rtrequest_scoped (int ,struct sockaddr*,int *,struct sockaddr*,int ,struct rtentry**,unsigned int) ;

int
nd6_prefix_offlink(struct nd_prefix *pr)
{
 int plen, error = 0, prproxy;
 struct ifnet *ifp = pr->ndpr_ifp;
 struct sockaddr_in6 sa6, mask6, prefix;
 struct rtentry *rt = ((void*)0), *ndpr_rt = ((void*)0);
 unsigned int ifscope;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);


 NDPR_LOCK(pr);
 if ((pr->ndpr_stateflags & NDPRF_ONLINK) == 0) {
  nd6log((LOG_ERR,
      "nd6_prefix_offlink: %s/%d on %s scoped=%d is already "
      "off-link\n", ip6_sprintf(&pr->ndpr_prefix.sin6_addr),
      pr->ndpr_plen, if_name(pr->ndpr_ifp),
      (pr->ndpr_stateflags & NDPRF_IFSCOPE) ? 1 : 0));
  NDPR_UNLOCK(pr);
  return (EEXIST);
 }

 bzero(&sa6, sizeof (sa6));
 sa6.sin6_family = AF_INET6;
 sa6.sin6_len = sizeof (sa6);
 bcopy(&pr->ndpr_prefix.sin6_addr, &sa6.sin6_addr,
     sizeof (struct in6_addr));
 bzero(&mask6, sizeof (mask6));
 mask6.sin6_family = AF_INET6;
 mask6.sin6_len = sizeof (sa6);
 bcopy(&pr->ndpr_mask, &mask6.sin6_addr, sizeof (struct in6_addr));
 prefix = pr->ndpr_prefix;
 plen = pr->ndpr_plen;
 if ((ndpr_rt = pr->ndpr_rt) != ((void*)0))
  pr->ndpr_rt = ((void*)0);
 NDPR_ADDREF_LOCKED(pr);
 NDPR_UNLOCK(pr);

 ifscope = (pr->ndpr_stateflags & NDPRF_IFSCOPE) ?
     ifp->if_index : IFSCOPE_NONE;

 error = rtrequest_scoped(RTM_DELETE, (struct sockaddr *)&sa6,
     ((void*)0), (struct sockaddr *)&mask6, 0, &rt, ifscope);

 if (rt != ((void*)0)) {

  RT_LOCK(rt);
  nd6_rtmsg(RTM_DELETE, rt);
  RT_UNLOCK(rt);
  rtfree(rt);

 } else {
  nd6log((LOG_ERR,
      "nd6_prefix_offlink: failed to delete route: "
      "%s/%d on %s, scoped %d, (errno = %d)\n",
      ip6_sprintf(&sa6.sin6_addr), plen, if_name(ifp),
      (ifscope != IFSCOPE_NONE), error));
 }

 if (ndpr_rt != ((void*)0))
  rtfree(ndpr_rt);

 lck_mtx_lock(&proxy6_lock);

 NDPR_LOCK(pr);
 prproxy = (pr->ndpr_stateflags & NDPRF_PRPROXY);
 VERIFY(!prproxy || !(pr->ndpr_stateflags & NDPRF_IFSCOPE));
 pr->ndpr_stateflags &= ~(NDPRF_ONLINK | NDPRF_IFSCOPE | NDPRF_PRPROXY);
 if (pr->ndpr_prproxy_sols_cnt > 0) {
  VERIFY(prproxy);
  nd6_prproxy_sols_reap(pr);
  VERIFY(pr->ndpr_prproxy_sols_cnt == 0);
  VERIFY(RB_EMPTY(&pr->ndpr_prproxy_sols));
 }
 NDPR_UNLOCK(pr);







 nd6_prproxy_prelist_update(pr, prproxy ? pr : ((void*)0));

 NDPR_REMREF(pr);
 lck_mtx_unlock(&proxy6_lock);

 return (error);
}
