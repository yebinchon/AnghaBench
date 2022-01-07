
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;



__attribute__((used)) static int16_t gamepad_clamp_axis(int16_t value, bool is_negative)
{
   if (is_negative && value > 0)
      return 0;
   if (!is_negative && value < 0)
      return 0;

   return value;
}
