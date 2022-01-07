
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc32_hash_table ;

uint32_t crc32_adjust(uint32_t checksum, uint8_t input)
{
   return ((checksum >> 8) & 0x00ffffff) ^ crc32_hash_table[(checksum ^ input) & 0xff];
}
