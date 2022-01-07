
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_pbuf {int dummy; } ;
struct uip_netif {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
typedef int s8_t ;


 int uip_arp_out (struct uip_netif*,struct uip_ip_addr*,struct uip_pbuf*) ;

__attribute__((used)) static s8_t __bba_start_tx(struct uip_netif *dev,struct uip_pbuf *p,struct uip_ip_addr *ipaddr)
{
 return uip_arp_out(dev,ipaddr,p);
}
