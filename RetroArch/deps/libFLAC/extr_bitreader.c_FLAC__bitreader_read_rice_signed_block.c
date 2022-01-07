
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int brword ;
struct TYPE_6__ {unsigned int* buffer; unsigned int consumed_words; unsigned int words; int consumed_bits; } ;
typedef unsigned int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;


 unsigned int COUNT_ZERO_MSBS2 (unsigned int) ;
 int FLAC__ASSERT (int) ;
 int FLAC__BITS_PER_WORD ;
 int FLAC__bitreader_read_raw_uint32 (TYPE_1__*,unsigned int*,unsigned int) ;
 int FLAC__bitreader_read_unary_unsigned (TYPE_1__*,unsigned int*) ;
 int crc16_update_word_ (TYPE_1__*,unsigned int) ;

FLAC__bool FLAC__bitreader_read_rice_signed_block(FLAC__BitReader *br, int vals[], unsigned nvals, unsigned parameter)
{



 unsigned cwords, words, lsbs, msbs, x, y;
 unsigned ucbits;
 brword b;
 int *val, *end;

 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);

 FLAC__ASSERT(FLAC__BITS_PER_WORD >= 32);
 FLAC__ASSERT(parameter < 32);


 val = vals;
 end = vals + nvals;

 if(parameter == 0) {
  while(val < end) {

   if(!FLAC__bitreader_read_unary_unsigned(br, &msbs))
    return 0;

   *val++ = (int)(msbs >> 1) ^ -(int)(msbs & 1);
  }

  return 1;
 }

 FLAC__ASSERT(parameter > 0);

 cwords = br->consumed_words;
 words = br->words;


 if(cwords >= words) {
  x = 0;
  goto process_tail;
 }

 ucbits = FLAC__BITS_PER_WORD - br->consumed_bits;
 b = br->buffer[cwords] << br->consumed_bits;

 while(val < end) {

  x = y = COUNT_ZERO_MSBS2(b);
  if(x == FLAC__BITS_PER_WORD) {
   x = ucbits;
   do {

    crc16_update_word_(br, br->buffer[cwords++]);
    if (cwords >= words)
     goto incomplete_msbs;
    b = br->buffer[cwords];
    y = COUNT_ZERO_MSBS2(b);
    x += y;
   } while(y == FLAC__BITS_PER_WORD);
  }
  b <<= y;
  b <<= 1;
  ucbits = (ucbits - x - 1) % FLAC__BITS_PER_WORD;
  msbs = x;


  x = (FLAC__uint32)(b >> (FLAC__BITS_PER_WORD - parameter));
  if(parameter <= ucbits) {
   ucbits -= parameter;
   b <<= parameter;
  } else {

   crc16_update_word_(br, br->buffer[cwords++]);
   if (cwords >= words)
    goto incomplete_lsbs;
   b = br->buffer[cwords];
   ucbits += FLAC__BITS_PER_WORD - parameter;
   x |= (FLAC__uint32)(b >> ucbits);
   b <<= FLAC__BITS_PER_WORD - ucbits;
  }
  lsbs = x;


  x = (msbs << parameter) | lsbs;
  *val++ = (int)(x >> 1) ^ -(int)(x & 1);

  continue;


process_tail:
  do {
   if(0) {
incomplete_msbs:
    br->consumed_bits = 0;
    br->consumed_words = cwords;
   }


   if(!FLAC__bitreader_read_unary_unsigned(br, &msbs))
    return 0;
   msbs += x;
   x = ucbits = 0;

   if(0) {
incomplete_lsbs:
    br->consumed_bits = 0;
    br->consumed_words = cwords;
   }


   if(!FLAC__bitreader_read_raw_uint32(br, &lsbs, parameter - ucbits))
    return 0;
   lsbs = x | lsbs;


   x = (msbs << parameter) | lsbs;
   *val++ = (int)(x >> 1) ^ -(int)(x & 1);
   x = 0;

   cwords = br->consumed_words;
   words = br->words;
   ucbits = FLAC__BITS_PER_WORD - br->consumed_bits;
   b = br->buffer[cwords] << br->consumed_bits;
  } while(cwords >= words && val < end);
 }

 if(ucbits == 0 && cwords < words) {

  crc16_update_word_(br, br->buffer[cwords++]);
  ucbits = FLAC__BITS_PER_WORD;
 }

 br->consumed_bits = FLAC__BITS_PER_WORD - ucbits;
 br->consumed_words = cwords;

 return 1;
}
