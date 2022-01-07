
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t FLAC__uint8 ;
typedef int FLAC__byte ;


 size_t* FLAC__crc8_table ;

FLAC__uint8 FLAC__crc8(const FLAC__byte *data, unsigned len)
{
 FLAC__uint8 crc = 0;

 while(len--)
  crc = FLAC__crc8_table[crc ^ *data++];

 return crc;
}
