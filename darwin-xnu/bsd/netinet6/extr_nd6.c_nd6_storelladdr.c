
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct sockaddr {int dummy; } ;
struct rtentry {TYPE_2__* rt_gateway; } ;
struct mbuf {int m_flags; } ;
struct ifnet {int if_type; int if_addrlen; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;
struct TYPE_3__ {int sin6_addr; } ;


 scalar_t__ AF_LINK ;
 int ETHER_MAP_IPV6_MULTICAST (int *,int *) ;
 int LLADDR (struct sockaddr_dl*) ;
 int M_MCAST ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct sockaddr_dl* SDL (TYPE_2__*) ;
 TYPE_1__* SIN6 (struct sockaddr*) ;
 int bcopy (int ,int *,scalar_t__) ;
 int printf (char*) ;

int
nd6_storelladdr(struct ifnet *ifp, struct rtentry *rt, struct mbuf *m,
    struct sockaddr *dst, u_char *desten)
{
 int i;
 struct sockaddr_dl *sdl;

 if (m->m_flags & M_MCAST) {
  switch (ifp->if_type) {
  case 133:
  case 132:
  case 128:
  case 129:

  case 130:

  case 134:
   ETHER_MAP_IPV6_MULTICAST(&SIN6(dst)->sin6_addr, desten);
   return (1);
  case 131:
   for (i = 0; i < ifp->if_addrlen; i++)
    desten[i] = ~0;
   return (1);
  case 135:
   *desten = 0;
   return (1);
  default:
   return (0);
  }
 }

 if (rt == ((void*)0)) {

  return (0);
 }
 RT_LOCK(rt);
 if (rt->rt_gateway->sa_family != AF_LINK) {
  printf("nd6_storelladdr: something odd happens\n");
  RT_UNLOCK(rt);
  return (0);
 }
 sdl = SDL(rt->rt_gateway);
 if (sdl->sdl_alen == 0) {

  printf("nd6_storelladdr: sdl_alen == 0\n");
  RT_UNLOCK(rt);
  return (0);
 }

 bcopy(LLADDR(sdl), desten, sdl->sdl_alen);
 RT_UNLOCK(rt);
 return (1);
}
