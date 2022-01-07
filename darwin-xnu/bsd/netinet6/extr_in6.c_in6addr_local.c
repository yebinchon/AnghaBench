
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {TYPE_1__* rt_gateway; } ;
struct in6_addr {int dummy; } ;
typedef int sin6 ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 int AF_INET6 ;
 scalar_t__ AF_LINK ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr*) ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int bcopy (struct in6_addr*,int *,int) ;
 int in6_localaddr (struct in6_addr*) ;
 struct rtentry* rtalloc1 (struct sockaddr*,int ,int ) ;
 int rtfree (struct rtentry*) ;

int
in6addr_local(struct in6_addr *in6)
{
 struct rtentry *rt;
 struct sockaddr_in6 sin6;
 int local = 0;

 if (IN6_IS_ADDR_LOOPBACK(in6) || IN6_IS_SCOPE_LINKLOCAL(in6))
  return (1);

 sin6.sin6_family = AF_INET6;
 sin6.sin6_len = sizeof (sin6);
 bcopy(in6, &sin6.sin6_addr, sizeof (*in6));
 rt = rtalloc1((struct sockaddr *)&sin6, 0, 0);

 if (rt != ((void*)0)) {
  RT_LOCK_SPIN(rt);
  if (rt->rt_gateway->sa_family == AF_LINK)
   local = 1;
  RT_UNLOCK(rt);
  rtfree(rt);
 } else {
  local = in6_localaddr(in6);
 }
 return (local);
}
