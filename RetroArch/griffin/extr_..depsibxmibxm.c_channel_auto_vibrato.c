
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel {int av_count; int vibrato_add; TYPE_1__* instrument; } ;
struct TYPE_2__ {int vib_depth; int vib_sweep; int vib_rate; int vib_type; } ;


 int channel_waveform (struct channel*,int,int) ;

__attribute__((used)) static void channel_auto_vibrato( struct channel *channel ) {
 int sweep, rate, type, wave;
 int depth = channel->instrument->vib_depth & 0x7F;
 if( depth > 0 ) {
  sweep = channel->instrument->vib_sweep & 0x7F;
  rate = channel->instrument->vib_rate & 0x7F;
  type = channel->instrument->vib_type;
  if( channel->av_count < sweep ) {
   depth = depth * channel->av_count / sweep;
  }
  wave = channel_waveform( channel, channel->av_count * rate >> 2, type + 4 );
  channel->vibrato_add += wave * depth >> 8;
  channel->av_count++;
 }
}
