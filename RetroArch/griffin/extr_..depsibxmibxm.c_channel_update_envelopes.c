
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct channel {scalar_t__ fadeout_vol; int key_on; void* pan_env_tick; TYPE_1__* instrument; void* vol_env_tick; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_3__ {scalar_t__ vol_fadeout; TYPE_2__ pan_env; TYPE_2__ vol_env; } ;


 void* envelope_next_tick (TYPE_2__*,void*,int ) ;

__attribute__((used)) static void channel_update_envelopes( struct channel *channel ) {
 if( channel->instrument->vol_env.enabled ) {
  if( !channel->key_on ) {
   channel->fadeout_vol -= channel->instrument->vol_fadeout;
   if( channel->fadeout_vol < 0 ) {
    channel->fadeout_vol = 0;
   }
  }
  channel->vol_env_tick = envelope_next_tick( &channel->instrument->vol_env,
   channel->vol_env_tick, channel->key_on );
 }
 if( channel->instrument->pan_env.enabled ) {
  channel->pan_env_tick = envelope_next_tick( &channel->instrument->pan_env,
   channel->pan_env_tick, channel->key_on );
 }
}
