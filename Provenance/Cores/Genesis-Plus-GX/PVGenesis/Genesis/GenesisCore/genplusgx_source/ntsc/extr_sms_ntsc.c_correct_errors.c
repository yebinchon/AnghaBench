
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sms_ntsc_rgb_t ;


 int CORRECT_ERROR (unsigned int) ;
 int rgb_kernel_size ;

__attribute__((used)) static void correct_errors( sms_ntsc_rgb_t color, sms_ntsc_rgb_t* out )
{
  unsigned i;
  for ( i = 0; i < rgb_kernel_size / 2; i++ )
  {
    sms_ntsc_rgb_t error = color -
        out [i ] - out [(i+12)%14+14] - out [(i+10)%14+28] -
        out [i + 7] - out [i + 5 +14] - out [i + 3 +28];
    CORRECT_ERROR( i + 3 + 28 );
  }
}
