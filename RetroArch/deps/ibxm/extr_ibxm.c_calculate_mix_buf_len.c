
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calculate_tick_len (int,int) ;

int calculate_mix_buf_len( int sample_rate ) {
 return ( calculate_tick_len( 32, sample_rate ) + 65 ) * 4;
}
