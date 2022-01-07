
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifnet {int dummy; } ;
struct ifaddr {void (* ifa_rtrequest ) (int,struct rtentry*,struct sockaddr*) ;struct ifnet* ifa_ifp; } ;


 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTM_ADD ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 struct ifaddr* ifaof_ifpforaddr (struct sockaddr*,struct ifnet*) ;
 int rnh_lock ;
 struct sockaddr* rt_key (struct rtentry*) ;
 int rtsetifa (struct rtentry*,struct ifaddr*) ;

void
link_rtrequest(int cmd, struct rtentry *rt, struct sockaddr *sa)
{
 struct ifaddr *ifa;
 struct sockaddr *dst;
 struct ifnet *ifp;
 void (*ifa_rtrequest)(int, struct rtentry *, struct sockaddr *);

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);
 RT_LOCK_ASSERT_HELD(rt);

 if (cmd != RTM_ADD || ((ifa = rt->rt_ifa) == 0) ||
     ((ifp = ifa->ifa_ifp) == 0) || ((dst = rt_key(rt)) == 0))
  return;


 RT_CONVERT_LOCK(rt);

 ifa = ifaof_ifpforaddr(dst, ifp);
 if (ifa) {
  rtsetifa(rt, ifa);
  IFA_LOCK_SPIN(ifa);
  ifa_rtrequest = ifa->ifa_rtrequest;
  IFA_UNLOCK(ifa);
  if (ifa_rtrequest != ((void*)0) && ifa_rtrequest != link_rtrequest)
   ifa_rtrequest(cmd, rt, sa);
  IFA_REMREF(ifa);
 }
}
