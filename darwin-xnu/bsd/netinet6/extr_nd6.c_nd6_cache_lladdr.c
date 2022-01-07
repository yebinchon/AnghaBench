
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_gateway; scalar_t__ rt_llinfo; } ;
struct route_event {int dummy; } ;
struct radix_node_head {int (* rnh_walktree ) (struct radix_node_head*,int ,void*) ;} ;
struct nd_ifinfo {scalar_t__ initialized; int flags; } ;
struct mbuf {int dummy; } ;
struct llinfo_nd6 {int ln_state; int ln_router; struct mbuf* ln_hold; } ;
struct in6_addr {int dummy; } ;
struct ifnet {scalar_t__ if_addrlen; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 size_t AF_INET6 ;
 scalar_t__ AF_LINK ;
 scalar_t__ FALSE ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (struct in6_addr*) ;
 int LLADDR (struct sockaddr_dl*) ;
 int ND6_CACHE_STATE_TRANSITION (struct llinfo_nd6*,int) ;
 int ND6_IFF_PERFORMNUD ;
 int ND6_LLINFO_INCOMPLETE ;
 int ND6_LLINFO_NOSTATE ;
 int ND6_LLINFO_REACHABLE ;
 int ND6_LLINFO_STALE ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;


 int ND_REDIRECT_ROUTER ;


 int ROUTE_LLENTRY_CHANGED ;
 int ROUTE_LLENTRY_RESOLVED ;
 int RTF_GATEWAY ;
 int RTF_LLINFO ;
 int RTF_ROUTER ;
 int RTF_STATIC ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct sockaddr_dl* SDL (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 scalar_t__ bcmp (char*,int ,scalar_t__) ;
 int bcopy (char*,int ,scalar_t__) ;
 int defrouter_select (struct ifnet*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int ln_setexpire (struct llinfo_nd6*,scalar_t__) ;
 int nd6_free (struct rtentry*) ;
 scalar_t__ nd6_gctimer ;
 int nd6_llreach_alloc (struct rtentry*,struct ifnet*,int ,scalar_t__,scalar_t__) ;
 struct rtentry* nd6_lookup (struct in6_addr*,int,struct ifnet*,int ) ;
 int nd6_mutex ;
 int nd6_output_list (struct ifnet*,struct ifnet*,struct mbuf*,struct sockaddr_in6*,struct rtentry*,int *) ;
 int nd6_sched_timeout (int *,int *) ;
 scalar_t__ net_uptime () ;
 int panic (char*) ;
 int rnh_lock ;
 int route_event_enqueue_nwk_wq_entry (struct rtentry*,int *,int,int *,scalar_t__) ;
 int route_event_init (struct route_event*,struct rtentry*,int *,int) ;
 int route_event_walktree ;
 struct radix_node_head** rt_tables ;
 int rtfree (struct rtentry*) ;
 int rtkey_to_sa6 (struct rtentry*,struct sockaddr_in6*) ;
 int stub1 (struct radix_node_head*,int ,void*) ;

void
nd6_cache_lladdr(struct ifnet *ifp, struct in6_addr *from, char *lladdr,
    int lladdrlen, int type, int code)
{
#pragma unused(lladdrlen)
 struct rtentry *rt = ((void*)0);
 struct llinfo_nd6 *ln = ((void*)0);
 int is_newentry;
 struct sockaddr_dl *sdl = ((void*)0);
 int do_update;
 int olladdr;
 int llchange;
 int newstate = 0;
 uint64_t timenow;
 boolean_t sched_timeout = FALSE;
 struct nd_ifinfo *ndi = ((void*)0);

 if (ifp == ((void*)0))
  panic("ifp == NULL in nd6_cache_lladdr");
 if (from == ((void*)0))
  panic("from == NULL in nd6_cache_lladdr");


 if (IN6_IS_ADDR_UNSPECIFIED(from))
  return;





 timenow = net_uptime();

 rt = nd6_lookup(from, 0, ifp, 0);
 if (rt == ((void*)0)) {
  if ((rt = nd6_lookup(from, 1, ifp, 0)) == ((void*)0))
   return;
  RT_LOCK_ASSERT_HELD(rt);
  is_newentry = 1;
 } else {
  RT_LOCK_ASSERT_HELD(rt);

  if (rt->rt_flags & RTF_STATIC) {
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
   return;
  }
  is_newentry = 0;
 }

 if (rt == ((void*)0))
  return;
 if ((rt->rt_flags & (RTF_GATEWAY | RTF_LLINFO)) != RTF_LLINFO) {
fail:
  RT_UNLOCK(rt);
  nd6_free(rt);
  rtfree(rt);
  return;
 }
 ln = (struct llinfo_nd6 *)rt->rt_llinfo;
 if (ln == ((void*)0))
  goto fail;
 if (rt->rt_gateway == ((void*)0))
  goto fail;
 if (rt->rt_gateway->sa_family != AF_LINK)
  goto fail;
 sdl = SDL(rt->rt_gateway);

 olladdr = (sdl->sdl_alen) ? 1 : 0;
 if (olladdr && lladdr) {
  if (bcmp(lladdr, LLADDR(sdl), ifp->if_addrlen))
   llchange = 1;
  else
   llchange = 0;
 } else
  llchange = 0;
 if (lladdr != ((void*)0)) {




  sdl->sdl_alen = ifp->if_addrlen;
  bcopy(lladdr, LLADDR(sdl), ifp->if_addrlen);


  nd6_llreach_alloc(rt, ifp, LLADDR(sdl), sdl->sdl_alen, FALSE);
 }

 if (is_newentry == 0) {
  if ((!olladdr && lladdr != ((void*)0)) ||
      (olladdr && lladdr != ((void*)0) && llchange)) {
   do_update = 1;
   newstate = ND6_LLINFO_STALE;
  } else
   do_update = 0;
 } else {
  do_update = 1;
  if (lladdr == ((void*)0))
   newstate = ND6_LLINFO_NOSTATE;
  else
   newstate = ND6_LLINFO_STALE;
 }






 ndi = ND_IFINFO(ifp);
 VERIFY((((void*)0) != ndi) && (TRUE == ndi->initialized));

 if (ndi && !(ndi->flags & ND6_IFF_PERFORMNUD)) {
  newstate = ND6_LLINFO_REACHABLE;
  ln_setexpire(ln, 0);
 }

 if (do_update) {



  ND6_CACHE_STATE_TRANSITION(ln, newstate);

  if ((ln->ln_state == ND6_LLINFO_STALE) ||
     (ln->ln_state == ND6_LLINFO_REACHABLE)) {
   struct mbuf *m = ln->ln_hold;






   if (ln->ln_state == ND6_LLINFO_STALE)
    ln_setexpire(ln, timenow + nd6_gctimer);

   ln->ln_hold = ((void*)0);
   if (m != ((void*)0)) {
    struct sockaddr_in6 sin6;

    rtkey_to_sa6(rt, &sin6);




    RT_UNLOCK(rt);
    nd6_output_list(ifp, ifp, m, &sin6, rt, ((void*)0));
    RT_LOCK(rt);
   }
  } else if (ln->ln_state == ND6_LLINFO_INCOMPLETE) {

   ln_setexpire(ln, timenow);
   sched_timeout = TRUE;
  }
 }
 switch (type & 0xff) {
 case 131:



  if (is_newentry)
   ln->ln_router = 0;
  break;
 case 130:





  if (code == ND_REDIRECT_ROUTER)
   ln->ln_router = 1;
  else if (is_newentry)
   ln->ln_router = 0;
  break;
 case 128:



  ln->ln_router = 0;
  break;
 case 129:



  if ((!is_newentry && (olladdr || lladdr)) ||
      (is_newentry && lladdr)) {
   ln->ln_router = 1;
  }
  break;
 }

 if (do_update) {
  int route_ev_code = 0;

  if (llchange)
   route_ev_code = ROUTE_LLENTRY_CHANGED;
  else
   route_ev_code = ROUTE_LLENTRY_RESOLVED;


  route_event_enqueue_nwk_wq_entry(rt, ((void*)0), route_ev_code, ((void*)0), TRUE);

  if (ln->ln_router || (rt->rt_flags & RTF_ROUTER)) {
   struct radix_node_head *rnh = ((void*)0);
   struct route_event rt_ev;
   route_event_init(&rt_ev, rt, ((void*)0), llchange ? ROUTE_LLENTRY_CHANGED :
       ROUTE_LLENTRY_RESOLVED);





   RT_UNLOCK(rt);
   lck_mtx_lock(rnh_lock);

   rnh = rt_tables[AF_INET6];
   if (rnh != ((void*)0))
    (void) rnh->rnh_walktree(rnh, route_event_walktree,
        (void *)&rt_ev);
   lck_mtx_unlock(rnh_lock);
   RT_LOCK(rt);
  }
 }
 if (do_update && ln->ln_router) {
  RT_REMREF_LOCKED(rt);
  RT_UNLOCK(rt);
  lck_mtx_lock(nd6_mutex);
  defrouter_select(ifp);
  lck_mtx_unlock(nd6_mutex);
 } else {
  RT_REMREF_LOCKED(rt);
  RT_UNLOCK(rt);
 }
 if (sched_timeout) {
  lck_mtx_lock(rnh_lock);
  nd6_sched_timeout(((void*)0), ((void*)0));
  lck_mtx_unlock(rnh_lock);
 }
}
