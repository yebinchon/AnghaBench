
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8_t ;
struct TYPE_2__ {scalar_t__ ctime; int * p; int state; } ;


 size_t ARP_TABLE_SIZE ;
 int ETHARP_STATE_EMPTY ;
 TYPE_1__* arp_table ;

void
etharp_init(void)
{
  u8_t i;

  for(i = 0; i < ARP_TABLE_SIZE; ++i) {
    arp_table[i].state = ETHARP_STATE_EMPTY;



    arp_table[i].ctime = 0;
  }
}
