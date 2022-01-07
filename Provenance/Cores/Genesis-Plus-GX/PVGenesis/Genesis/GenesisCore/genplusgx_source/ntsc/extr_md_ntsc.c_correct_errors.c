
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ md_ntsc_rgb_t ;


 int CORRECT_ERROR (unsigned int) ;
 int rgb_kernel_size ;

__attribute__((used)) static void correct_errors( md_ntsc_rgb_t color, md_ntsc_rgb_t* out )
{
  unsigned i;
  for ( i = 0; i < rgb_kernel_size / 4; i++ )
  {
    md_ntsc_rgb_t error = color -
        out [i ] - out [i + 2 +16] - out [i + 4 ] - out [i + 6 +16] -
        out [i + 8] - out [(i+10)%16+16] - out [(i+12)%16] - out [(i+14)%16+16];
    CORRECT_ERROR( i + 6 + 16 );

  }
}
