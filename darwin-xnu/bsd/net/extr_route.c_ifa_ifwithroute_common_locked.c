
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifaddr {TYPE_2__* ifa_addr; TYPE_1__* ifa_ifp; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;
struct TYPE_3__ {unsigned int if_index; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IFA_ADDREF (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTF_IFSCOPE ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int SA (uintptr_t) ;
 int equal (TYPE_2__*,struct sockaddr*) ;
 struct ifaddr* ifa_ifwithaddr_scoped (struct sockaddr const*,unsigned int) ;
 struct ifaddr* ifa_ifwithdstaddr (struct sockaddr const*) ;
 struct ifaddr* ifa_ifwithnet_scoped (struct sockaddr const*,unsigned int) ;
 struct ifaddr* ifaof_ifpforaddr (struct sockaddr const*,TYPE_1__*) ;
 int rnh_lock ;
 struct rtentry* rtalloc1_scoped_locked (struct sockaddr*,int ,int ,unsigned int) ;
 struct sockaddr* sa_copy (int ,struct sockaddr_storage*,int *) ;

__attribute__((used)) static struct ifaddr *
ifa_ifwithroute_common_locked(int flags, const struct sockaddr *dst,
    const struct sockaddr *gw, unsigned int ifscope)
{
 struct ifaddr *ifa = ((void*)0);
 struct rtentry *rt = ((void*)0);
 struct sockaddr_storage dst_ss, gw_ss;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);
 if (dst != ((void*)0) && dst->sa_family == AF_INET)

  dst = sa_copy(SA((uintptr_t)dst), &dst_ss, ((void*)0));






 if (gw != ((void*)0) && gw->sa_family == AF_INET)

  gw = sa_copy(SA((uintptr_t)gw), &gw_ss, ((void*)0));

 if (!(flags & RTF_GATEWAY)) {







  if (flags & RTF_HOST) {
   ifa = ifa_ifwithdstaddr(dst);
  }
  if (ifa == ((void*)0))
   ifa = ifa_ifwithaddr_scoped(gw, ifscope);
 } else {





  ifa = ifa_ifwithdstaddr(gw);
 }
 if (ifa == ((void*)0))
  ifa = ifa_ifwithnet_scoped(gw, ifscope);
 if (ifa == ((void*)0)) {

  rt = rtalloc1_scoped_locked((struct sockaddr *)(size_t)dst,
      0, 0, ifscope);
  if (rt != ((void*)0)) {
   RT_LOCK_SPIN(rt);
   ifa = rt->rt_ifa;
   if (ifa != ((void*)0)) {

    RT_CONVERT_LOCK(rt);
    IFA_ADDREF(ifa);
   }
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
   rt = ((void*)0);
  }
 }





 if (ifa != ((void*)0) && ifa->ifa_addr->sa_family != dst->sa_family) {
  struct ifaddr *newifa;

  newifa = ifaof_ifpforaddr(dst, ifa->ifa_ifp);
  if (newifa != ((void*)0)) {
   IFA_REMREF(ifa);
   ifa = newifa;
  }
 }
 if ((ifa == ((void*)0) ||
     !equal(ifa->ifa_addr, (struct sockaddr *)(size_t)gw)) &&
     (rt = rtalloc1_scoped_locked((struct sockaddr *)(size_t)gw,
     0, 0, ifscope)) != ((void*)0)) {
  if (ifa != ((void*)0))
   IFA_REMREF(ifa);
  RT_LOCK_SPIN(rt);
  ifa = rt->rt_ifa;
  if (ifa != ((void*)0)) {

   RT_CONVERT_LOCK(rt);
   IFA_ADDREF(ifa);
  }
  RT_REMREF_LOCKED(rt);
  RT_UNLOCK(rt);
 }





 if ((flags & RTF_IFSCOPE) &&
     ifa != ((void*)0) && ifa->ifa_ifp->if_index != ifscope) {
  IFA_REMREF(ifa);
  ifa = ((void*)0);
 }





 if (ifa != ((void*)0) &&
     ifa->ifa_addr->sa_family != dst->sa_family) {
  IFA_REMREF(ifa);
  ifa = ((void*)0);
 }

 return (ifa);
}
