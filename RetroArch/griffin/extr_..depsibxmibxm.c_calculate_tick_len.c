
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calculate_tick_len( int tempo, int sample_rate ) {
 return ( sample_rate * 5 ) / ( tempo * 2 );
}
