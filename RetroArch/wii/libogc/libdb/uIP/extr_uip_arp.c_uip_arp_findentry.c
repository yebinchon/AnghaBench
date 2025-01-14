
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8_t ;
struct uip_ip_addr {int dummy; } ;
typedef size_t s8_t ;
struct TYPE_2__ {scalar_t__ state; size_t time; int ipaddr; } ;


 scalar_t__ ARP_STATE_EMPTY ;
 scalar_t__ ARP_STATE_PENDING ;
 scalar_t__ ARP_STATE_STABLE ;
 size_t ARP_TRY_HARD ;
 size_t UIP_ARPTAB_SIZE ;
 size_t UIP_ERR_MEM ;
 TYPE_1__* arp_table ;
 scalar_t__ ip_addr_cmp (struct uip_ip_addr*,int *) ;
 int ip_addr_set (int *,struct uip_ip_addr*) ;

__attribute__((used)) static s8_t uip_arp_findentry(struct uip_ip_addr *ipaddr,u8_t flags)
{
 s8_t old_pending = UIP_ARPTAB_SIZE, old_stable = UIP_ARPTAB_SIZE;
 s8_t empty = UIP_ARPTAB_SIZE;
 u8_t i = 0,age_pending = 0,age_stable = 0;




 for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
  if(empty==UIP_ARPTAB_SIZE && arp_table[i].state==ARP_STATE_EMPTY) {
   empty = i;
  } else if(arp_table[i].state==ARP_STATE_PENDING) {
   if(ipaddr && ip_addr_cmp(ipaddr,&arp_table[i].ipaddr)) return i;
   else if(arp_table[i].time>=age_pending) {
    old_pending = i;
    age_pending = arp_table[i].time;
   }
  } else if(arp_table[i].state==ARP_STATE_STABLE) {
   if(ipaddr && ip_addr_cmp(ipaddr,&arp_table[i].ipaddr)) return i;
   else if(arp_table[i].time>=age_stable) {
    old_stable = i;
    age_stable = arp_table[i].time;
   }
  }
 }
 if(empty==UIP_ARPTAB_SIZE && !(flags&ARP_TRY_HARD)) return UIP_ERR_MEM;

 if(empty<UIP_ARPTAB_SIZE) i = empty;
 else if(old_stable<UIP_ARPTAB_SIZE) i = old_stable;
 else if(old_pending<UIP_ARPTAB_SIZE) i = old_pending;
 else return UIP_ERR_MEM;

 arp_table[i].time = 0;
 arp_table[i].state = ARP_STATE_EMPTY;
 if(ipaddr!=((void*)0)) ip_addr_set(&arp_table[i].ipaddr,ipaddr);

 return (s8_t)i;
}
