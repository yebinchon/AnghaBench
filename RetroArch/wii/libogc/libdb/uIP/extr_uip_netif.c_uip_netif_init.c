
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * uip_netif_default ;
 int uip_netif_list ;

void uip_netif_init()
{
 uip_netif_list = uip_netif_default = ((void*)0);
}
