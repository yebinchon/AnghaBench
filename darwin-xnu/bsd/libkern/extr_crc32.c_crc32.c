
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;


 unsigned int* crc32_tab ;

uint32_t
crc32(uint32_t crc, const void *buf, size_t size)
{
 const uint8_t *p;

 p = buf;
 crc = crc ^ ~0U;

 while (size--)
  crc = crc32_tab[(crc ^ *p++) & 0xFF] ^ (crc >> 8);

 return crc ^ ~0U;
}
