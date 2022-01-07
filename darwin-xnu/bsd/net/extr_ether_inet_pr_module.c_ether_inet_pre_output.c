
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int16_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr_dl {int dummy; } ;
struct sockaddr {int sa_family; int sa_data; } ;
struct mbuf {int m_flags; } ;
struct ether_header {int ether_type; int ether_dhost; } ;
typedef int route_t ;
typedef int protocol_family_t ;
typedef struct mbuf* mbuf_t ;
typedef int ll_dest ;
typedef TYPE_1__* ifnet_t ;
typedef int ethertype_ip ;
typedef int errno_t ;
struct TYPE_5__ {int if_flags; } ;




 int EAFNOSUPPORT ;
 int ENETDOWN ;
 int ETHERTYPE_IP ;
 int ETHER_ADDR_LEN ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int * LLADDR (struct sockaddr_dl*) ;
 int M_LOOP ;
 int arp_lookup_ip (TYPE_1__*,struct sockaddr_in const*,struct sockaddr_dl*,int,int ,struct mbuf*) ;
 int bcopy (int *,char*,int) ;
 int htons (int ) ;
 char* if_name (TYPE_1__*) ;
 int memcpy (char*,int ,int) ;
 int printf (char*,char*,int) ;


__attribute__((used)) static errno_t
ether_inet_pre_output(ifnet_t ifp, protocol_family_t protocol_family,
    mbuf_t *m0, const struct sockaddr *dst_netaddr,
    void *route, char *type, char *edst)
{
#pragma unused(protocol_family)
 struct mbuf *m = *m0;
 const struct ether_header *eh;
 errno_t result = 0;

 if ((ifp->if_flags & (IFF_UP|IFF_RUNNING)) != (IFF_UP|IFF_RUNNING))
  return (ENETDOWN);




 m->m_flags |= M_LOOP;

 switch (dst_netaddr->sa_family) {
 case 130: {
  struct sockaddr_dl ll_dest;

  result = arp_lookup_ip(ifp,
      (const struct sockaddr_in *)(uintptr_t)(size_t)dst_netaddr,
      &ll_dest, sizeof (ll_dest), (route_t)route, *m0);
  if (result == 0) {
   u_int16_t ethertype_ip = htons(ETHERTYPE_IP);

   bcopy(LLADDR(&ll_dest), edst, ETHER_ADDR_LEN);
   bcopy(&ethertype_ip, type, sizeof (ethertype_ip));
  }
  break;
 }

 case 128:
 case 129:
  m->m_flags &= ~M_LOOP;
  eh = (const struct ether_header *)(uintptr_t)(size_t)
      dst_netaddr->sa_data;
  (void) memcpy(edst, eh->ether_dhost, 6);
  bcopy(&eh->ether_type, type, sizeof (u_short));
  break;

 default:
  printf("%s: can't handle af%d\n", if_name(ifp),
      dst_netaddr->sa_family);

  result = EAFNOSUPPORT;
  break;
 }

 return (result);
}
