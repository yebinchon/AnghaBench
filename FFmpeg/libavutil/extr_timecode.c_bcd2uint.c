
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static unsigned bcd2uint(uint8_t bcd)
{
   unsigned low = bcd & 0xf;
   unsigned high = bcd >> 4;
   if (low > 9 || high > 9)
       return 0;
   return low + 10*high;
}
