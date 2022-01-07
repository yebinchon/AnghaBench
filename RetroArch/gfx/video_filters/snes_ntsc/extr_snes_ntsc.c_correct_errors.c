
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ snes_ntsc_rgb_t ;


 int DISTRIBUTE_ERROR (unsigned int,unsigned int,unsigned int) ;
 int alignment_count ;
 int burst_count ;
 int rgb_kernel_size ;

__attribute__((used)) static void correct_errors( snes_ntsc_rgb_t color, snes_ntsc_rgb_t* out )
{
 int n;
 for ( n = burst_count; n; --n )
 {
  unsigned i;
  for ( i = 0; i < rgb_kernel_size / 2; i++ )
  {
   snes_ntsc_rgb_t error = color -
     out [i ] - out [(i+12)%14+14] - out [(i+10)%14+28] -
     out [i + 7] - out [i + 5 +14] - out [i + 3 +28];
   DISTRIBUTE_ERROR( i+3+28, i+5+14, i+7 );
  }
  out += alignment_count * rgb_kernel_size;
 }
}
