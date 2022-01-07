
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct channel {int vol_slide_param; scalar_t__ fx_count; int volume; TYPE_2__* replay; } ;
struct TYPE_4__ {TYPE_1__* module; } ;
struct TYPE_3__ {scalar_t__ fast_vol_slides; } ;



__attribute__((used)) static void channel_volume_slide( struct channel *channel ) {
 int up = channel->vol_slide_param >> 4;
 int down = channel->vol_slide_param & 0xF;
 if( down == 0xF && up > 0 ) {

  if( channel->fx_count == 0 ) {
   channel->volume += up;
  }
 } else if( up == 0xF && down > 0 ) {

  if( channel->fx_count == 0 ) {
   channel->volume -= down;
  }
 } else if( channel->fx_count > 0 || channel->replay->module->fast_vol_slides ) {

  channel->volume += up - down;
 }
 if( channel->volume > 64 ) {
  channel->volume = 64;
 }
 if( channel->volume < 0 ) {
  channel->volume = 0;
 }
}
