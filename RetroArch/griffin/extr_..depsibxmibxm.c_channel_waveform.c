
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int random_seed; } ;


 int* sine_table ;

__attribute__((used)) static int channel_waveform( struct channel *channel, int phase, int type ) {
 int amplitude = 0;
 switch( type ) {
  default:
   amplitude = sine_table[ phase & 0x1F ];
   if( ( phase & 0x20 ) > 0 ) {
    amplitude = -amplitude;
   }
   break;
  case 6:
   amplitude = ( ( ( phase + 0x20 ) & 0x3F ) << 3 ) - 255;
   break;
  case 1: case 7:
   amplitude = 255 - ( ( ( phase + 0x20 ) & 0x3F ) << 3 );
   break;
  case 2: case 5:
   amplitude = ( phase & 0x20 ) > 0 ? 255 : -255;
   break;
  case 3: case 8:
   amplitude = ( channel->random_seed >> 20 ) - 255;
   channel->random_seed = ( channel->random_seed * 65 + 17 ) & 0x1FFFFFFF;
   break;
 }
 return amplitude;
}
