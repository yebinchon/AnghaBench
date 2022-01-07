
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int vibrato_type; int vibrato_add; int vibrato_depth; int vibrato_phase; } ;


 int channel_waveform (struct channel*,int ,int) ;

__attribute__((used)) static void channel_vibrato( struct channel *channel, int fine ) {
 int wave = channel_waveform( channel, channel->vibrato_phase, channel->vibrato_type & 0x3 );
 channel->vibrato_add = wave * channel->vibrato_depth >> ( fine ? 7 : 5 );
}
