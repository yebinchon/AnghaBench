
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {int addr; } ;
struct uip_netif {int flags; TYPE_4__ netmask; TYPE_3__ ip_addr; } ;
struct uip_ip_addr {int addr; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int addr; } ;


 int UIP_NETIF_FLAG_BROADCAST ;
 scalar_t__ ip_addr_netcmp (struct uip_ip_addr*,TYPE_3__*,TYPE_4__*) ;
 TYPE_2__ ipaddr_any ;
 TYPE_1__ ipaddr_broadcast ;

u8_t uip_ipaddr_isbroadcast(struct uip_ip_addr *addr,struct uip_netif *netif)
{
 if(addr->addr==ipaddr_broadcast.addr
  || addr->addr==ipaddr_any.addr)
  return 1;
 else if(!(netif->flags&UIP_NETIF_FLAG_BROADCAST))
  return 0;
 else if(addr->addr==netif->ip_addr.addr)
  return 0;
 else if(ip_addr_netcmp(addr,&netif->ip_addr,&netif->netmask)
  && ((addr->addr&~netif->netmask.addr)==(ipaddr_broadcast.addr&~netif->netmask.addr)))
  return 1;
 else
  return 0;
}
