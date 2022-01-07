
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct replay {scalar_t__ tick; scalar_t__ speed; int** play_count; size_t seq_pos; size_t row; int * channels; TYPE_1__* module; } ;
struct TYPE_2__ {int num_channels; } ;


 int channel_tick (int *) ;
 int replay_row (struct replay*) ;

__attribute__((used)) static int replay_tick( struct replay *replay ) {
 int idx, num_channels, count = 1;
 if( --replay->tick <= 0 ) {
  replay->tick = replay->speed;
  replay_row( replay );
 } else {
  num_channels = replay->module->num_channels;
  for( idx = 0; idx < num_channels; idx++ ) {
   channel_tick( &replay->channels[ idx ] );
  }
 }
 if( replay->play_count && replay->play_count[ 0 ] ) {
  count = replay->play_count[ replay->seq_pos ][ replay->row ] - 1;
 }
 return count;
}
