
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int sin6_family; } ;
struct route_in6 {TYPE_2__* ro_rt; int ro_dst; } ;
struct route {int dummy; } ;
struct ifnet {int if_index; } ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ rmx_mtu; int rmx_locks; } ;
struct TYPE_4__ {TYPE_1__ rt_rmx; struct ifnet* rt_ifp; } ;


 int AF_INET6 ;
 int EHOSTUNREACH ;
 int FALSE ;
 int IFSCOPE_NONE ;
 int IN6_ARE_ADDR_EQUAL (struct in6_addr*,struct in6_addr*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr*) ;
 scalar_t__ IN6_LINKMTU (struct ifnet*) ;
 scalar_t__ IPV6_MMTU ;
 int ROUTE_RELEASE (struct route_in6*) ;
 scalar_t__ ROUTE_UNUSABLE (struct route_in6*) ;
 int RTV_MTU ;
 struct sockaddr_in6* SIN6 (int *) ;
 int TRUE ;
 int bzero (struct sockaddr_in6*,int) ;
 int rtalloc_scoped (struct route*,int ) ;

__attribute__((used)) static int
ip6_getpmtu(struct route_in6 *ro_pmtu, struct route_in6 *ro,
    struct ifnet *ifp, struct in6_addr *dst, u_int32_t *mtup,
    boolean_t *alwaysfragp)
{
 u_int32_t mtu = 0;
 boolean_t alwaysfrag = FALSE;
 int error = 0;
 boolean_t is_local = FALSE;

 if (IN6_IS_SCOPE_LINKLOCAL(dst))
  is_local = TRUE;

 if (ro_pmtu != ro) {

  struct sockaddr_in6 *sa6_dst = SIN6(&ro_pmtu->ro_dst);
  if (ROUTE_UNUSABLE(ro_pmtu) ||
      !IN6_ARE_ADDR_EQUAL(&sa6_dst->sin6_addr, dst))
   ROUTE_RELEASE(ro_pmtu);

  if (ro_pmtu->ro_rt == ((void*)0)) {
   bzero(sa6_dst, sizeof (*sa6_dst));
   sa6_dst->sin6_family = AF_INET6;
   sa6_dst->sin6_len = sizeof (struct sockaddr_in6);
   sa6_dst->sin6_addr = *dst;

   rtalloc_scoped((struct route *)ro_pmtu,
       ifp != ((void*)0) ? ifp->if_index : IFSCOPE_NONE);
  }
 }

 if (ro_pmtu->ro_rt != ((void*)0)) {
  u_int32_t ifmtu;

  if (ifp == ((void*)0))
   ifp = ro_pmtu->ro_rt->rt_ifp;

  ifmtu = IN6_LINKMTU(ifp);






  mtu = ro_pmtu->ro_rt->rt_rmx.rmx_mtu;
  if (mtu > ifmtu || mtu == 0) {
   mtu = ifmtu;
   if (!(ro_pmtu->ro_rt->rt_rmx.rmx_locks & RTV_MTU))
    ro_pmtu->ro_rt->rt_rmx.rmx_mtu = mtu;
  } else if (mtu < IPV6_MMTU) {
   alwaysfrag = TRUE;
   mtu = IPV6_MMTU;
  }
 } else {
  if (ifp) {

   mtu = IN6_LINKMTU(ifp);
  } else {
   error = EHOSTUNREACH;
  }
 }

 *mtup = mtu;
 if ((alwaysfragp != ((void*)0)) && !is_local)
  *alwaysfragp = alwaysfrag;
 return (error);
}
