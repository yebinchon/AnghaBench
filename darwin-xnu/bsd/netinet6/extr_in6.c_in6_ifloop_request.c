
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct TYPE_2__ {int sin6_addr; } ;
struct in6_ifaddr {TYPE_1__ ia_addr; } ;
struct ifaddr {int ifa_addr; } ;
typedef int all1_sa ;


 int AF_INET6 ;
 int LOG_ERR ;
 int RTF_HOST ;
 int RTF_LLINFO ;
 int RTF_UP ;
 int RTM_ADD ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int bzero (struct sockaddr_in6*,int) ;
 int in6mask128 ;
 int ip6_sprintf (int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int log (int ,char*,char*,int ,int) ;
 int rnh_lock ;
 int rt_newaddrmsg (int,struct ifaddr*,int,struct rtentry*) ;
 int rtfree_locked (struct rtentry*) ;
 int rtrequest_locked (int,int ,int ,struct sockaddr*,int,struct rtentry**) ;
 int rtsetifa (struct rtentry*,struct ifaddr*) ;

__attribute__((used)) static void
in6_ifloop_request(int cmd, struct ifaddr *ifa)
{
 struct sockaddr_in6 all1_sa;
 struct rtentry *nrt = ((void*)0);
 int e;

 bzero(&all1_sa, sizeof (all1_sa));
 all1_sa.sin6_family = AF_INET6;
 all1_sa.sin6_len = sizeof (struct sockaddr_in6);
 all1_sa.sin6_addr = in6mask128;
 lck_mtx_lock(rnh_lock);
 e = rtrequest_locked(cmd, ifa->ifa_addr, ifa->ifa_addr,
     (struct sockaddr *)&all1_sa, RTF_UP|RTF_HOST|RTF_LLINFO, &nrt);
 if (e != 0) {
  log(LOG_ERR, "in6_ifloop_request: "
      "%s operation failed for %s (errno=%d)\n",
      cmd == RTM_ADD ? "ADD" : "DELETE",
      ip6_sprintf(&((struct in6_ifaddr *)ifa)->ia_addr.sin6_addr),
      e);
 }

 if (nrt != ((void*)0))
  RT_LOCK(nrt);







 if (cmd == RTM_ADD && nrt && ifa != nrt->rt_ifa) {
  rtsetifa(nrt, ifa);
 }







 if (nrt != ((void*)0)) {
  rt_newaddrmsg(cmd, ifa, e, nrt);
  if (cmd == RTM_DELETE) {
   RT_UNLOCK(nrt);
   rtfree_locked(nrt);
  } else {

   RT_REMREF_LOCKED(nrt);
   RT_UNLOCK(nrt);
  }
 }
 lck_mtx_unlock(rnh_lock);
}
