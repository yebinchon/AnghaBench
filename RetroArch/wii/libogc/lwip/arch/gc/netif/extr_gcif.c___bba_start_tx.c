
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int dummy; } ;
struct netif {int dummy; } ;
struct ip_addr {int dummy; } ;
typedef int err_t ;


 int LWIP_DEBUGF (int ,char*) ;
 int LWP_GetSelf () ;
 int NETIF_DEBUG ;
 int etharp_output (struct netif*,struct ip_addr*,struct pbuf*) ;

__attribute__((used)) static err_t __bba_start_tx(struct netif *dev,struct pbuf *p,struct ip_addr *ipaddr)
{
 LWIP_DEBUGF(NETIF_DEBUG,("__bba_start_tx(%p)\n",LWP_GetSelf()));
 return etharp_output(dev,ipaddr,p);
}
