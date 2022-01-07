
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc32_table ;

uint32_t encoding_crc32(uint32_t crc, const uint8_t *buf, size_t len)
{
   crc = crc ^ 0xffffffff;

   while (len--)
      crc = crc32_table[(crc ^ (*buf++)) & 0xff] ^ (crc >> 8);

   return crc ^ 0xffffffff;
}
