
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {scalar_t__ period; scalar_t__ porta_period; int tone_porta_param; } ;



__attribute__((used)) static void channel_tone_porta( struct channel *channel ) {
 if( channel->period > 0 ) {
  if( channel->period < channel->porta_period ) {
   channel->period += channel->tone_porta_param << 2;
   if( channel->period > channel->porta_period ) {
    channel->period = channel->porta_period;
   }
  } else {
   channel->period -= channel->tone_porta_param << 2;
   if( channel->period < channel->porta_period ) {
    channel->period = channel->porta_period;
   }
  }
 }
}
