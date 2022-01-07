
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_len; int sdl_len; scalar_t__ sdl_alen; int sdl_type; int sdl_family; int sin_addr; int sin_family; } ;
struct sockaddr_dl {int sin_len; int sdl_len; scalar_t__ sdl_alen; int sdl_type; int sdl_family; int sin_addr; int sin_family; } ;
struct mbuf {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ether_arp {int arp_pln; scalar_t__ arp_hln; int arp_op; int arp_sha; int arp_tpa; int arp_spa; int arp_pro; int arp_hrd; } ;
typedef int sender_ip ;
typedef int sender_hw ;


 int AF_INET ;
 int AF_LINK ;
 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ETHERTYPE_IP ;
 scalar_t__ ETHER_ADDR_LEN ;
 int IFT_ETHER ;
 int LLADDR (struct sockaddr_in*) ;
 int _ip_copy (int *,int ) ;
 int arp_ip_handle_input (struct ifnet*,scalar_t__,struct sockaddr_in*,struct sockaddr_in*,struct sockaddr_in*) ;
 int arp_llreach_set_reachable (struct ifnet*,int ,scalar_t__) ;
 scalar_t__ bcmp (int ,int ,scalar_t__) ;
 int bcopy (int ,int ,scalar_t__) ;
 int bzero (struct sockaddr_in*,int) ;
 int etherbroadcastaddr ;
 struct ether_arp* mbuf_data (struct mbuf*) ;
 int mbuf_freem (struct mbuf*) ;
 int mbuf_len (struct mbuf*) ;
 scalar_t__ mbuf_pullup (struct mbuf**,int) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
ether_inet_arp_input(struct ifnet *ifp, struct mbuf *m)
{
 struct ether_arp *ea;
 struct sockaddr_dl sender_hw;
 struct sockaddr_in sender_ip;
 struct sockaddr_in target_ip;

 if (mbuf_len(m) < sizeof (*ea) && mbuf_pullup(&m, sizeof (*ea)) != 0)
  return;

 ea = mbuf_data(m);


 if (ntohs(ea->arp_hrd) != ARPHRD_ETHER ||
     ntohs(ea->arp_pro) != ETHERTYPE_IP ||
     ea->arp_pln != sizeof (struct in_addr) ||
     ea->arp_hln != ETHER_ADDR_LEN) {
  mbuf_freem(m);
  return;
 }


 if (bcmp(ea->arp_sha, etherbroadcastaddr, ETHER_ADDR_LEN) == 0) {
  mbuf_freem(m);
  return;
 }

 bzero(&sender_ip, sizeof (sender_ip));
 sender_ip.sin_len = sizeof (sender_ip);
 sender_ip.sin_family = AF_INET;
 _ip_copy(&sender_ip.sin_addr, ea->arp_spa);
 target_ip = sender_ip;
 _ip_copy(&target_ip.sin_addr, ea->arp_tpa);

 bzero(&sender_hw, sizeof (sender_hw));
 sender_hw.sdl_len = sizeof (sender_hw);
 sender_hw.sdl_family = AF_LINK;
 sender_hw.sdl_type = IFT_ETHER;
 sender_hw.sdl_alen = ETHER_ADDR_LEN;
 bcopy(ea->arp_sha, LLADDR(&sender_hw), ETHER_ADDR_LEN);


 arp_llreach_set_reachable(ifp, LLADDR(&sender_hw), ETHER_ADDR_LEN);

 arp_ip_handle_input(ifp, ntohs(ea->arp_op), &sender_hw, &sender_ip,
     &target_ip);
 mbuf_freem(m);
}
