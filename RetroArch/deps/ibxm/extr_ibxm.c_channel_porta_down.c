
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int period; int fx_count; } ;



__attribute__((used)) static void channel_porta_down( struct channel *channel, int param ) {
 if( channel->period > 0 ) {
  switch( param & 0xF0 ) {
   case 0xE0:
    if( channel->fx_count == 0 ) {
     channel->period += param & 0xF;
    }
    break;
   case 0xF0:
    if( channel->fx_count == 0 ) {
     channel->period += ( param & 0xF ) << 2;
    }
    break;
   default:
    if( channel->fx_count > 0 ) {
     channel->period += param << 2;
    }
    break;
  }
  if( channel->period > 65535 ) {
   channel->period = 65535;
  }
 }
}
