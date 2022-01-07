
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_ifa; int rt_gateway; } ;
struct rt_addrinfo {struct sockaddr** rti_info; } ;
struct ifnet {unsigned int if_index; } ;
struct ifaddr {int ifa_addr; } ;
typedef int info ;
typedef int caddr_t ;
struct TYPE_6__ {int sa_len; } ;
struct TYPE_5__ {short rts_dynamic; short rts_newgateway; int rts_badredirect; } ;
struct TYPE_4__ {struct sockaddr* ifa_addr; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENETUNREACH ;
 int FALSE ;
 int IFA_REMREF (struct ifaddr*) ;
 unsigned int IFSCOPE_NONE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int ROUTE_ENTRY_REFRESH ;
 size_t RTAX_AUTHOR ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTF_CLONING ;
 int RTF_DONE ;
 int RTF_DYNAMIC ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTF_MODIFIED ;
 int RTF_PRCLONING ;
 int RTM_ADD ;
 int RTM_REDIRECT ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_LOCK_ASSERT_NOTHELD (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int bzero (int ,int) ;
 int equal (struct sockaddr*,int ) ;
 struct ifaddr* ifa_ifwithaddr (struct sockaddr*) ;
 struct ifaddr* ifa_ifwithnet_scoped (struct sockaddr*,unsigned int) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int route_event_enqueue_nwk_wq_entry (struct rtentry*,int *,int ,int *,int ) ;
 int routegenid_inet6_update () ;
 int routegenid_inet_update () ;
 int rt_key (struct rtentry*) ;
 TYPE_3__* rt_mask (struct rtentry*) ;
 int rt_missmsg (int ,struct rt_addrinfo*,int,int) ;
 int rt_setgate (struct rtentry*,int ,struct sockaddr*) ;
 struct rtentry* rtalloc1_scoped_locked (struct sockaddr*,int ,int,unsigned int) ;
 int rtfree_locked (struct rtentry*) ;
 int rtrequest_scoped_locked (int ,struct sockaddr*,struct sockaddr*,struct sockaddr*,int,int *,unsigned int) ;
 TYPE_2__ rtstat ;
 struct sockaddr* sa_copy (struct sockaddr*,struct sockaddr_storage*,unsigned int*) ;

void
rtredirect(struct ifnet *ifp, struct sockaddr *dst, struct sockaddr *gateway,
    struct sockaddr *netmask, int flags, struct sockaddr *src,
    struct rtentry **rtp)
{
 struct rtentry *rt = ((void*)0);
 int error = 0;
 short *stat = 0;
 struct rt_addrinfo info;
 struct ifaddr *ifa = ((void*)0);
 unsigned int ifscope = (ifp != ((void*)0)) ? ifp->if_index : IFSCOPE_NONE;
 struct sockaddr_storage ss;
 int af = src->sa_family;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(rnh_lock);
 if (af == AF_INET)

  src = sa_copy(src, &ss, &ifscope);






 if ((ifa = ifa_ifwithnet_scoped(gateway, ifscope)) == ((void*)0)) {
  error = ENETUNREACH;
  goto out;
 }


 rt = rtalloc1_scoped_locked(dst, 0, RTF_CLONING|RTF_PRCLONING, ifscope);
 if (rt != ((void*)0))
  RT_LOCK(rt);
 if (!(flags & RTF_DONE) && rt != ((void*)0) &&
     (!equal(src, rt->rt_gateway) || !equal(rt->rt_ifa->ifa_addr,
     ifa->ifa_addr))) {
  error = EINVAL;
 } else {
  IFA_REMREF(ifa);
  if ((ifa = ifa_ifwithaddr(gateway))) {
   IFA_REMREF(ifa);
   ifa = ((void*)0);
   error = EHOSTUNREACH;
  }
 }

 if (ifa) {
  IFA_REMREF(ifa);
  ifa = ((void*)0);
 }

 if (error) {
  if (rt != ((void*)0))
   RT_UNLOCK(rt);
  goto done;
 }







 if ((rt == ((void*)0)) || (rt_mask(rt) != ((void*)0) && rt_mask(rt)->sa_len < 2))
  goto create;




 RT_LOCK_ASSERT_HELD(rt);
 if (rt->rt_flags & RTF_GATEWAY) {
  if (((rt->rt_flags & RTF_HOST) == 0) && (flags & RTF_HOST)) {






create:
   if (rt != ((void*)0))
    RT_UNLOCK(rt);
   flags |= RTF_GATEWAY | RTF_DYNAMIC;
   error = rtrequest_scoped_locked(RTM_ADD, dst,
       gateway, netmask, flags, ((void*)0), ifscope);
   stat = &rtstat.rts_dynamic;
  } else {




   rt->rt_flags |= RTF_MODIFIED;
   flags |= RTF_MODIFIED;
   stat = &rtstat.rts_newgateway;



   error = rt_setgate(rt, rt_key(rt), gateway);
   RT_UNLOCK(rt);
  }
 } else {
  RT_UNLOCK(rt);
  error = EHOSTUNREACH;
 }
done:
 if (rt != ((void*)0)) {
  RT_LOCK_ASSERT_NOTHELD(rt);
  if (!error) {

   route_event_enqueue_nwk_wq_entry(rt, ((void*)0), ROUTE_ENTRY_REFRESH, ((void*)0), FALSE);
   if (rtp)
    *rtp = rt;
   else
    rtfree_locked(rt);
  }
  else
   rtfree_locked(rt);
 }
out:
 if (error) {
  rtstat.rts_badredirect++;
 } else {
  if (stat != ((void*)0))
   (*stat)++;

  if (af == AF_INET)
   routegenid_inet_update();




 }
 lck_mtx_unlock(rnh_lock);
 bzero((caddr_t)&info, sizeof(info));
 info.rti_info[RTAX_DST] = dst;
 info.rti_info[RTAX_GATEWAY] = gateway;
 info.rti_info[RTAX_NETMASK] = netmask;
 info.rti_info[RTAX_AUTHOR] = src;
 rt_missmsg(RTM_REDIRECT, &info, flags, error);
}
