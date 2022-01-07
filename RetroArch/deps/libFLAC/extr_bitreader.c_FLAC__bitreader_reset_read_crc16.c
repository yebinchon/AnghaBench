
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; int consumed_bits; unsigned int read_crc16; int crc16_align; } ;
typedef scalar_t__ FLAC__uint16 ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;

void FLAC__bitreader_reset_read_crc16(FLAC__BitReader *br, FLAC__uint16 seed)
{
 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);
 FLAC__ASSERT((br->consumed_bits & 7) == 0);

 br->read_crc16 = (unsigned)seed;
 br->crc16_align = br->consumed_bits;
}
