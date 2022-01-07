
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int tremolo_type; int tremolo_add; int tremolo_depth; int tremolo_phase; } ;


 int channel_waveform (struct channel*,int ,int) ;

__attribute__((used)) static void channel_tremolo( struct channel *channel ) {
 int wave = channel_waveform( channel, channel->tremolo_phase, channel->tremolo_type & 0x3 );
 channel->tremolo_add = wave * channel->tremolo_depth >> 6;
}
