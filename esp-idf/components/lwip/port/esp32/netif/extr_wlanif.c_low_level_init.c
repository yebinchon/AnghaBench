
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int mtu; int flags; int l2_buffer_free_notify; int hwaddr_len; } ;


 int ETHARP_HWADDR_LEN ;
 int NETIF_FLAG_BROADCAST ;
 int NETIF_FLAG_ETHARP ;
 int NETIF_FLAG_IGMP ;
 int NETIF_FLAG_LINK_UP ;
 int lwip_netif_wifi_free_rx_buffer ;

__attribute__((used)) static void
low_level_init(struct netif *netif)
{

  netif->hwaddr_len = ETHARP_HWADDR_LEN;




  netif->mtu = 1500;



  netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHARP | NETIF_FLAG_LINK_UP;
    netif->l2_buffer_free_notify = lwip_netif_wifi_free_rx_buffer;

}
