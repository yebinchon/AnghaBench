
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t s32_t ;
struct TYPE_2__ {scalar_t__ time; int state; } ;


 int ARP_STATE_EMPTY ;
 size_t UIP_ARPTAB_SIZE ;
 TYPE_1__* arp_table ;

void
uip_arp_init(void)
{
 s32_t i;
 for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
  arp_table[i].state = ARP_STATE_EMPTY;
  arp_table[i].time = 0;
 }
}
