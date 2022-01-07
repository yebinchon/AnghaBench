
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int brword ;
struct TYPE_5__ {unsigned int* buffer; int capacity; size_t consumed_words; size_t words; int bytes; int consumed_bits; } ;
typedef unsigned int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 int FLAC__BITS_PER_WORD ;
 unsigned int const FLAC__WORD_ALL_ONES ;
 int bitreader_read_from_client_ (TYPE_1__*) ;
 int crc16_update_word_ (TYPE_1__*,unsigned int const) ;

FLAC__bool FLAC__bitreader_read_raw_uint32(FLAC__BitReader *br, FLAC__uint32 *val, unsigned bits)
{
 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);

 FLAC__ASSERT(bits <= 32);
 FLAC__ASSERT((br->capacity*FLAC__BITS_PER_WORD) * 2 >= bits);
 FLAC__ASSERT(br->consumed_words <= br->words);


 FLAC__ASSERT(FLAC__BITS_PER_WORD >= 32);

 if(bits == 0) {
  *val = 0;
  return 1;
 }

 while((br->words-br->consumed_words)*FLAC__BITS_PER_WORD + br->bytes*8 - br->consumed_bits < bits) {
  if(!bitreader_read_from_client_(br))
   return 0;
 }
 if(br->consumed_words < br->words) {

  if(br->consumed_bits) {

   const unsigned n = FLAC__BITS_PER_WORD - br->consumed_bits;
   const brword word = br->buffer[br->consumed_words];
   if(bits < n) {
    *val = (FLAC__uint32)((word & (FLAC__WORD_ALL_ONES >> br->consumed_bits)) >> (n-bits));
    br->consumed_bits += bits;
    return 1;
   }

   *val = (FLAC__uint32)(word & (FLAC__WORD_ALL_ONES >> br->consumed_bits));
   bits -= n;
   crc16_update_word_(br, word);
   br->consumed_words++;
   br->consumed_bits = 0;
   if(bits) {
    *val <<= bits;
    *val |= (FLAC__uint32)(br->buffer[br->consumed_words] >> (FLAC__BITS_PER_WORD-bits));
    br->consumed_bits = bits;
   }
   return 1;
  }
  else {
   const brword word = br->buffer[br->consumed_words];
   if(bits < FLAC__BITS_PER_WORD) {
    *val = (FLAC__uint32)(word >> (FLAC__BITS_PER_WORD-bits));
    br->consumed_bits = bits;
    return 1;
   }

   *val = (FLAC__uint32)word;
   crc16_update_word_(br, word);
   br->consumed_words++;
   return 1;
  }
 }
 else {





  if(br->consumed_bits) {

   FLAC__ASSERT(br->consumed_bits + bits <= br->bytes*8);
   *val = (FLAC__uint32)((br->buffer[br->consumed_words] & (FLAC__WORD_ALL_ONES >> br->consumed_bits)) >> (FLAC__BITS_PER_WORD-br->consumed_bits-bits));
   br->consumed_bits += bits;
   return 1;
  }
  else {
   *val = (FLAC__uint32)(br->buffer[br->consumed_words] >> (FLAC__BITS_PER_WORD-bits));
   br->consumed_bits += bits;
   return 1;
  }
 }
}
