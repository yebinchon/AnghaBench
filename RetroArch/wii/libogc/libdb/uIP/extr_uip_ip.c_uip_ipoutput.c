
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct uip_pbuf {int dummy; } ;
struct uip_netif {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
typedef int s8_t ;


 int UIP_ERROR (char*) ;
 int UIP_ERR_RTE ;
 int uip_ipoutput_if (struct uip_pbuf*,struct uip_ip_addr*,struct uip_ip_addr*,int ,int ,int ,struct uip_netif*) ;
 struct uip_netif* uip_iproute (struct uip_ip_addr*) ;

s8_t uip_ipoutput(struct uip_pbuf *p,struct uip_ip_addr *src,struct uip_ip_addr *dst,u8_t ttl,u8_t tos,u8_t proto)
{
 struct uip_netif *netif;

 if((netif=uip_iproute(dst))==((void*)0)) {
  UIP_ERROR("uip_ipoutput: No route found.\n");
  return UIP_ERR_RTE;
 }
 return uip_ipoutput_if(p,src,dst,ttl,tos,proto,netif);
}
