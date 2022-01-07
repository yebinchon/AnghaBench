
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static int16_t ctr_joypad_fix_range(int16_t val)
{
   val = (val > 127)? 127: (val < -127)? -127: val;
   return val * 256;
}
