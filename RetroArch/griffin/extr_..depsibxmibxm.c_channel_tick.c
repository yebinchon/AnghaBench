
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int effect; scalar_t__ param; int volume; } ;
struct channel {scalar_t__ fx_count; int volume; int panning; int gvol_slide_param; int pan_slide_param; int arpeggio_add; int arpeggio_param; int vibrato_speed; int vibrato_phase; TYPE_2__ note; int sample_fra; int sample_idx; TYPE_1__* replay; int tremolo_speed; int tremolo_phase; int porta_down_param; int porta_up_param; int retrig_count; scalar_t__ vibrato_add; } ;
struct TYPE_3__ {int global_vol; } ;


 int channel_auto_vibrato (struct channel*) ;
 int channel_calculate_ampl (struct channel*) ;
 int channel_calculate_freq (struct channel*) ;
 int channel_porta_down (struct channel*,int ) ;
 int channel_porta_up (struct channel*,int ) ;
 int channel_retrig_vol_slide (struct channel*) ;
 int channel_tone_porta (struct channel*) ;
 int channel_tremolo (struct channel*) ;
 int channel_tremor (struct channel*) ;
 int channel_trigger (struct channel*) ;
 int channel_update_envelopes (struct channel*) ;
 int channel_vibrato (struct channel*,int) ;
 int channel_volume_slide (struct channel*) ;

__attribute__((used)) static void channel_tick( struct channel *channel ) {
 channel->vibrato_add = 0;
 channel->fx_count++;
 channel->retrig_count++;
 if( !( channel->note.effect == 0x7D && channel->fx_count <= channel->note.param ) ) {
  switch( channel->note.volume & 0xF0 ) {
   case 0x60:
    channel->volume -= channel->note.volume & 0xF;
    if( channel->volume < 0 ) {
     channel->volume = 0;
    }
    break;
   case 0x70:
    channel->volume += channel->note.volume & 0xF;
    if( channel->volume > 64 ) {
     channel->volume = 64;
    }
    break;
   case 0xB0:
    channel->vibrato_phase += channel->vibrato_speed;
    channel_vibrato( channel, 0 );
    break;
   case 0xD0:
    channel->panning -= channel->note.volume & 0xF;
    if( channel->panning < 0 ) {
     channel->panning = 0;
    }
    break;
   case 0xE0:
    channel->panning += channel->note.volume & 0xF;
    if( channel->panning > 255 ) {
     channel->panning = 255;
    }
    break;
   case 0xF0:
    channel_tone_porta( channel );
    break;
  }
 }
 switch( channel->note.effect ) {
  case 0x01: case 0x86:
   channel_porta_up( channel, channel->porta_up_param );
   break;
  case 0x02: case 0x85:
   channel_porta_down( channel, channel->porta_down_param );
   break;
  case 0x03: case 0x87:
   channel_tone_porta( channel );
   break;
  case 0x04: case 0x88:
   channel->vibrato_phase += channel->vibrato_speed;
   channel_vibrato( channel, 0 );
   break;
  case 0x05: case 0x8C:
   channel_tone_porta( channel );
   channel_volume_slide( channel );
   break;
  case 0x06: case 0x8B:
   channel->vibrato_phase += channel->vibrato_speed;
   channel_vibrato( channel, 0 );
   channel_volume_slide( channel );
   break;
  case 0x07: case 0x92:
   channel->tremolo_phase += channel->tremolo_speed;
   channel_tremolo( channel );
   break;
  case 0x0A: case 0x84:
   channel_volume_slide( channel );
   break;
  case 0x11:
   channel->replay->global_vol = channel->replay->global_vol
    + ( channel->gvol_slide_param >> 4 )
    - ( channel->gvol_slide_param & 0xF );
   if( channel->replay->global_vol < 0 ) {
    channel->replay->global_vol = 0;
   }
   if( channel->replay->global_vol > 64 ) {
    channel->replay->global_vol = 64;
   }
   break;
  case 0x19:
   channel->panning = channel->panning
    + ( channel->pan_slide_param >> 4 )
    - ( channel->pan_slide_param & 0xF );
   if( channel->panning < 0 ) {
    channel->panning = 0;
   }
   if( channel->panning > 255 ) {
    channel->panning = 255;
   }
   break;
  case 0x1B: case 0x91:
   channel_retrig_vol_slide( channel );
   break;
  case 0x1D: case 0x89:
   channel_tremor( channel );
   break;
  case 0x79:
   if( channel->fx_count >= channel->note.param ) {
    channel->fx_count = 0;
    channel->sample_idx = channel->sample_fra = 0;
   }
   break;
  case 0x7C: case 0xFC:
   if( channel->note.param == channel->fx_count ) {
    channel->volume = 0;
   }
   break;
  case 0x7D: case 0xFD:
   if( channel->note.param == channel->fx_count ) {
    channel_trigger( channel );
   }
   break;
  case 0x8A:
   if( channel->fx_count == 1 ) {
    channel->arpeggio_add = channel->arpeggio_param >> 4;
   } else if( channel->fx_count == 2 ) {
    channel->arpeggio_add = channel->arpeggio_param & 0xF;
   } else {
    channel->arpeggio_add = channel->fx_count = 0;
   }
   break;
  case 0x95:
   channel->vibrato_phase += channel->vibrato_speed;
   channel_vibrato( channel, 1 );
   break;
 }
 channel_auto_vibrato( channel );
 channel_calculate_freq( channel );
 channel_calculate_ampl( channel );
 channel_update_envelopes( channel );
}
