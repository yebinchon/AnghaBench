
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_dl {int sdl_alen; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int m_flags; } ;
typedef int sdl ;
typedef int protocol_family_t ;
typedef struct mbuf* mbuf_t ;
typedef int ifnet_t ;
typedef int ethertype_ipv6 ;
typedef scalar_t__ errno_t ;


 int ETHERTYPE_IPV6 ;
 int * LLADDR (struct sockaddr_dl*) ;
 int M_LOOP ;
 int bcopy (int *,char*,int) ;
 int htons (int ) ;
 scalar_t__ nd6_lookup_ipv6 (int ,struct sockaddr_in6 const*,struct sockaddr_dl*,int,void*,struct mbuf*) ;

__attribute__((used)) static errno_t
ether_inet6_pre_output(ifnet_t ifp, protocol_family_t protocol_family,
    mbuf_t *m0, const struct sockaddr *dst_netaddr, void *route,
    char *type, char *edst)
{
#pragma unused(protocol_family)
 errno_t result;
 struct sockaddr_dl sdl;
 struct mbuf *m = *m0;




 m->m_flags |= M_LOOP;

 result = nd6_lookup_ipv6(ifp, (const struct sockaddr_in6 *)
     (uintptr_t)(size_t)dst_netaddr, &sdl, sizeof (sdl), route, *m0);

 if (result == 0) {
  u_int16_t ethertype_ipv6 = htons(ETHERTYPE_IPV6);

  bcopy(&ethertype_ipv6, type, sizeof (ethertype_ipv6));
  bcopy(LLADDR(&sdl), edst, sdl.sdl_alen);
 }

 return (result);
}
