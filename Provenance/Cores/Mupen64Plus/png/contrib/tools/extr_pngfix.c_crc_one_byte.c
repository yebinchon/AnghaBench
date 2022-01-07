
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int* crc_table ;

__attribute__((used)) static png_uint_32
crc_one_byte(png_uint_32 crc, int b)
{
   return crc_table[(crc ^ b) & 0xff] ^ (crc >> 8);
}
