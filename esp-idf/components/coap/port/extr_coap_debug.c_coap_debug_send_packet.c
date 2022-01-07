
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int num_packet_loss_intervals ;
 TYPE_1__* packet_loss_intervals ;
 scalar_t__ packet_loss_level ;
 int prng (int *,int) ;
 scalar_t__ send_packet_count ;

int coap_debug_send_packet(void) {
  ++send_packet_count;
  if (num_packet_loss_intervals > 0) {
    int i;
    for (i = 0; i < num_packet_loss_intervals; i++) {
      if (send_packet_count >= packet_loss_intervals[i].start
        && send_packet_count <= packet_loss_intervals[i].end)
        return 0;
    }
  }
  if ( packet_loss_level > 0 ) {
    uint16_t r = 0;
    prng( (uint8_t*)&r, 2 );
    if ( r < packet_loss_level )
      return 0;
  }
  return 1;
}
