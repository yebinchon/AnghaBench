
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct ups_data {int dummy; } ;


 int ups_patch_read (struct ups_data*) ;

__attribute__((used)) static uint64_t ups_decode(struct ups_data *data)
{
   uint64_t offset = 0, shift = 1;
   while (1)
   {
      uint8_t x = ups_patch_read(data);
      offset += (x & 0x7f) * shift;

      if (x & 0x80)
         break;
      shift <<= 7;
      offset += shift;
   }
   return offset;
}
