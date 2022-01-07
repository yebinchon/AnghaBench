
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int brword ;
struct TYPE_6__ {int* buffer; scalar_t__ consumed_words; scalar_t__ words; scalar_t__ consumed_bits; } ;
typedef unsigned int FLAC__uint32 ;
typedef void* FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 unsigned int FLAC__BYTES_PER_WORD ;
 int FLAC__bitreader_is_consumed_byte_aligned (TYPE_1__*) ;
 int FLAC__bitreader_read_raw_uint32 (TYPE_1__*,unsigned int*,int) ;
 int bitreader_read_from_client_ (TYPE_1__*) ;

FLAC__bool FLAC__bitreader_read_byte_block_aligned_no_crc(FLAC__BitReader *br, FLAC__byte *val, unsigned nvals)
{
 FLAC__uint32 x;

 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);
 FLAC__ASSERT(FLAC__bitreader_is_consumed_byte_aligned(br));


 while(nvals && br->consumed_bits) {
  if(!FLAC__bitreader_read_raw_uint32(br, &x, 8))
   return 0;
  *val++ = (FLAC__byte)x;
  nvals--;
 }
 if(0 == nvals)
  return 1;

 while(nvals >= FLAC__BYTES_PER_WORD) {
  if(br->consumed_words < br->words) {
   const brword word = br->buffer[br->consumed_words++];
   for(x = 0; x < FLAC__BYTES_PER_WORD; x++)
    val[x] = (FLAC__byte)(word >> (8*(FLAC__BYTES_PER_WORD-x-1)));

   val += FLAC__BYTES_PER_WORD;
   nvals -= FLAC__BYTES_PER_WORD;
  }
  else if(!bitreader_read_from_client_(br))
   return 0;
 }

 while(nvals) {
  if(!FLAC__bitreader_read_raw_uint32(br, &x, 8))
   return 0;
  *val++ = (FLAC__byte)x;
  nvals--;
 }

 return 1;
}
