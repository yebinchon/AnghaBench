
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uipdev_s ;
struct uip_netif {int mtu; int hwaddr_len; scalar_t__ hwaddr; int flags; int linkoutput; int output; int * name; } ;
struct uip_eth_addr {int dummy; } ;
struct TYPE_4__ {int state; struct uip_eth_addr* ethaddr; } ;


 int IFNAME0 ;
 int IFNAME1 ;
 int UIP_ERR_OK ;
 int UIP_NETIF_FLAG_BROADCAST ;
 int __bba_link_tx ;
 int __bba_start_tx ;
 TYPE_1__ bba_device ;
 struct uip_netif* bba_netif ;

uipdev_s uip_bba_create(struct uip_netif *dev)
{
 dev->name[0] = IFNAME0;
 dev->name[1] = IFNAME1;

 dev->output = __bba_start_tx;
 dev->linkoutput = __bba_link_tx;
 dev->mtu = 1500;
 dev->flags = UIP_NETIF_FLAG_BROADCAST;
 dev->hwaddr_len = 6;

 bba_device.ethaddr = (struct uip_eth_addr*)dev->hwaddr;
 bba_device.state = UIP_ERR_OK;

 bba_netif = dev;
 return &bba_device;
}
