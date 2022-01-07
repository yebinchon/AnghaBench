
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int brword ;
struct TYPE_3__ {int* buffer; int consumed_bits; int crc16_align; size_t consumed_words; int read_crc16; } ;
typedef int FLAC__uint16 ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 int FLAC__BITS_PER_WORD ;
 int FLAC__CRC16_UPDATE (unsigned int,int ) ;

FLAC__uint16 FLAC__bitreader_get_read_crc16(FLAC__BitReader *br)
{
 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);
 FLAC__ASSERT((br->consumed_bits & 7) == 0);
 FLAC__ASSERT(br->crc16_align <= br->consumed_bits);


 if(br->consumed_bits) {
  const brword tail = br->buffer[br->consumed_words];
  for( ; br->crc16_align < br->consumed_bits; br->crc16_align += 8)
   br->read_crc16 = FLAC__CRC16_UPDATE((unsigned)((tail >> (FLAC__BITS_PER_WORD-8-br->crc16_align)) & 0xff), br->read_crc16);
 }
 return br->read_crc16;
}
