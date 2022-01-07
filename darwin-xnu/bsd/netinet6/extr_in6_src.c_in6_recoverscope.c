
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct in6_addr {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; struct in6_addr sin6_addr; } ;
struct ifnet {scalar_t__ if_index; } ;


 int ENXIO ;
 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (struct in6_addr const*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr const*) ;
 scalar_t__ if_index ;
 scalar_t__ ntohs (scalar_t__) ;

int
in6_recoverscope(
 struct sockaddr_in6 *sin6,
 const struct in6_addr *in6,
 struct ifnet *ifp)
{
 u_int32_t scopeid;

 sin6->sin6_addr = *in6;






 sin6->sin6_scope_id = 0;
 if (IN6_IS_SCOPE_LINKLOCAL(in6) || IN6_IS_ADDR_MC_INTFACELOCAL(in6)) {



  scopeid = ntohs(sin6->sin6_addr.s6_addr16[1]);
  if (scopeid) {






   if (if_index < scopeid)
    return (ENXIO);
   if (ifp && ifp->if_index != scopeid)
    return (ENXIO);
   sin6->sin6_addr.s6_addr16[1] = 0;
   sin6->sin6_scope_id = scopeid;
  }
 }

 return (0);
}
