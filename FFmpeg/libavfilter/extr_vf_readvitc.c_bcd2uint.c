
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static unsigned bcd2uint(uint8_t high, uint8_t low)
{
   if (high > 9 || low > 9)
       return 0;
   return 10*high + low;
}
