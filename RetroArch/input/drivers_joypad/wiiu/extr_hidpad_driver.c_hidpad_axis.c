
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int16_t ;


 int HID_AXIS (unsigned int,int ) ;
 int hidpad_query_pad (unsigned int) ;

__attribute__((used)) static int16_t hidpad_axis(unsigned pad, uint32_t axis)
{
   if (!hidpad_query_pad(pad))
      return 0;

   return HID_AXIS(pad, axis);
}
