
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct replay {int sample_rate; int interpolation; struct channel* channels; TYPE_1__* module; int tempo; } ;
struct channel {int dummy; } ;
struct TYPE_2__ {int num_channels; } ;


 int calculate_tick_len (int ,int) ;
 int channel_resample (struct channel*,int*,int ,int,int,int ) ;
 int channel_update_sample_idx (struct channel*,int,int) ;
 int downsample (int*,int) ;
 int memset (int*,int ,int) ;
 int replay_tick (struct replay*) ;
 int replay_volume_ramp (struct replay*,int*,int) ;

int replay_get_audio( struct replay *replay, int *mix_buf ) {
 struct channel *channel;
 int idx, num_channels, tick_len = calculate_tick_len( replay->tempo, replay->sample_rate );

 memset( mix_buf, 0, ( tick_len + 65 ) * 4 * sizeof( int ) );

 num_channels = replay->module->num_channels;
 for( idx = 0; idx < num_channels; idx++ ) {
  channel = &replay->channels[ idx ];
  channel_resample( channel, mix_buf, 0, ( tick_len + 65 ) * 2,
   replay->sample_rate * 2, replay->interpolation );
  channel_update_sample_idx( channel, tick_len * 2, replay->sample_rate * 2 );
 }
 downsample( mix_buf, tick_len + 64 );
 replay_volume_ramp( replay, mix_buf, tick_len );
 replay_tick( replay );
 return tick_len;
}
