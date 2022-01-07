
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay {int sample_rate; int tempo; } ;


 scalar_t__ calculate_tick_len (int ,int ) ;
 int replay_set_sequence_pos (struct replay*,int ) ;
 int replay_tick (struct replay*) ;

int replay_calculate_duration( struct replay *replay ) {
 int count = 0, duration = 0;
 replay_set_sequence_pos( replay, 0 );
 while( count < 1 ) {
  duration += calculate_tick_len( replay->tempo, replay->sample_rate );
  count = replay_tick( replay );
 }
 replay_set_sequence_pos( replay, 0 );
 return duration;
}
