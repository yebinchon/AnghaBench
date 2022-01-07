
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buffer; int consumed_bits; } ;
typedef int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 int FLAC__bitreader_read_raw_uint32 (TYPE_1__*,int *,unsigned int) ;
 int FLAC__bitreader_skip_byte_block_aligned_no_crc (TYPE_1__*,unsigned int) ;
 unsigned int MIN (int,unsigned int) ;

FLAC__bool FLAC__bitreader_skip_bits_no_crc(FLAC__BitReader *br, unsigned bits)
{




 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);

 if(bits > 0) {
  const unsigned n = br->consumed_bits & 7;
  unsigned m;
  FLAC__uint32 x;

  if(n != 0) {
   m = MIN(8-n, bits);
   if(!FLAC__bitreader_read_raw_uint32(br, &x, m))
    return 0;
   bits -= m;
  }
  m = bits / 8;
  if(m > 0) {
   if(!FLAC__bitreader_skip_byte_block_aligned_no_crc(br, m))
    return 0;
   bits %= 8;
  }
  if(bits > 0) {
   if(!FLAC__bitreader_read_raw_uint32(br, &x, bits))
    return 0;
  }
 }

 return 1;
}
