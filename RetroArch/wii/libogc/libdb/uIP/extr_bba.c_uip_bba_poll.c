
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uip_netif {int dummy; } ;


 int UIP_LOG (char*) ;
 int bba_devpoll (int *) ;

void uip_bba_poll(struct uip_netif *dev)
{
 u16 status;

 UIP_LOG("uip_bba_poll()\n");

 bba_devpoll(&status);

}
