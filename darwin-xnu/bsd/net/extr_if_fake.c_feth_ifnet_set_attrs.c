
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ether_header {int dummy; } ;
typedef int ifnet_t ;
typedef TYPE_1__* if_fake_ref ;
struct TYPE_3__ {int iff_flags; } ;


 int ETHERMTU ;
 int ETHER_ADDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_FLAGS_HWCSUM ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFNET_CSUM_IP ;
 int IFNET_CSUM_TCP ;
 int IFNET_CSUM_TCPIPV6 ;
 int IFNET_CSUM_UDP ;
 int IFNET_CSUM_UDPIPV6 ;
 int ifnet_set_addrlen (int ,int ) ;
 int ifnet_set_baudrate (int ,int ) ;
 int ifnet_set_capabilities_enabled (int ,int ,int) ;
 int ifnet_set_flags (int ,int,int) ;
 int ifnet_set_hdrlen (int ,int) ;
 int ifnet_set_mtu (int ,int ) ;
 int ifnet_set_offload (int ,int) ;

__attribute__((used)) static void
feth_ifnet_set_attrs(if_fake_ref fakeif, ifnet_t ifp)
{
 (void)ifnet_set_capabilities_enabled(ifp, 0, -1);
 ifnet_set_addrlen(ifp, ETHER_ADDR_LEN);
 ifnet_set_baudrate(ifp, 0);
 ifnet_set_mtu(ifp, ETHERMTU);
 ifnet_set_flags(ifp,
   IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX,
   0xffff);
 ifnet_set_hdrlen(ifp, sizeof(struct ether_header));
 if ((fakeif->iff_flags & IFF_FLAGS_HWCSUM) != 0) {
  ifnet_set_offload(ifp,
      IFNET_CSUM_IP | IFNET_CSUM_TCP | IFNET_CSUM_UDP |
      IFNET_CSUM_TCPIPV6 | IFNET_CSUM_UDPIPV6);
 } else {
  ifnet_set_offload(ifp, 0);
 }
}
