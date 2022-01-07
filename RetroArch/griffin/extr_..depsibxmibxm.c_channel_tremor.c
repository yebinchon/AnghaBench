
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {scalar_t__ retrig_count; scalar_t__ tremor_on_ticks; int tremolo_add; scalar_t__ tremor_off_ticks; } ;



__attribute__((used)) static void channel_tremor( struct channel *channel ) {
 if( channel->retrig_count >= channel->tremor_on_ticks ) {
  channel->tremolo_add = -64;
 }
 if( channel->retrig_count >= ( channel->tremor_on_ticks + channel->tremor_off_ticks ) ) {
  channel->tremolo_add = channel->retrig_count = 0;
 }
}
