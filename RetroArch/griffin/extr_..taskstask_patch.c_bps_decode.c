
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct bps_data {int dummy; } ;


 int bps_read (struct bps_data*) ;

__attribute__((used)) static uint64_t bps_decode(struct bps_data *bps)
{
   uint64_t data = 0, shift = 1;

   for (;;)
   {
      uint8_t x = bps_read(bps);
      data += (x & 0x7f) * shift;
      if (x & 0x80)
         break;
      shift <<= 7;
      data += shift;
   }

   return data;
}
