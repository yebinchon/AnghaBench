
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int* crc16_tab ;

uint16_t
crc16(uint16_t crc, const void *buf, size_t size)
{
 const uint8_t *p;

 p = buf;

 while (size--)
  crc = crc16_tab[(crc ^ (*p++)) & 0xFF] ^ (crc >> 8);

    return crc;
}
