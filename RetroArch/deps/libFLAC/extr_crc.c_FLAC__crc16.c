
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__byte ;


 unsigned int* FLAC__crc16_table ;

unsigned FLAC__crc16(const FLAC__byte *data, unsigned len)
{
 unsigned crc = 0;

 while(len--)
  crc = ((crc<<8) ^ FLAC__crc16_table[(crc>>8) ^ *data++]) & 0xffff;

 return crc;
}
