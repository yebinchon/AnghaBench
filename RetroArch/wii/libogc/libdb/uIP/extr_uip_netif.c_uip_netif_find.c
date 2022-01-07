
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8_t ;
struct uip_netif {char num; char const* name; struct uip_netif* next; } ;


 struct uip_netif* uip_netif_list ;

struct uip_netif* uip_netif_find(const char *name)
{
 u8_t num;
 struct uip_netif *netif;

 if(name==((void*)0)) return ((void*)0);

 num = name[2] - '0';

 for(netif=uip_netif_list;netif!=((void*)0);netif=netif->next) {
  if(netif->num==num &&
   netif->name[0]==name[0] &&
   netif->name[1]==name[1]) return netif;
 }

 return ((void*)0);
}
