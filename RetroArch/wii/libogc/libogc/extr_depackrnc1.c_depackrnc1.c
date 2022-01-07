
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long s32 ;
typedef int huf_table ;
typedef int bit_stream ;


 unsigned long RNC_FILE_IS_NOT_RNC ;
 unsigned long RNC_FILE_SIZE_MISMATCH ;
 unsigned long RNC_HUF_DECODE_ERROR ;
 unsigned long RNC_PACKED_CRC_ERROR ;
 long RNC_SIGNATURE ;
 unsigned long RNC_UNPACKED_CRC_ERROR ;
 int bit_advance (int *,int,unsigned char**) ;
 unsigned long bit_read (int *,int,int,unsigned char**) ;
 int bitread_fix (int *,unsigned char**) ;
 int bitread_init (int *,unsigned char**) ;
 long blong (unsigned char*) ;
 unsigned int bword (unsigned char*) ;
 long huf_read (int *,int *,unsigned char**) ;
 int read_huftable (int *,int *,unsigned char**) ;
 unsigned int rnc_crc (unsigned char*,unsigned long) ;

s32 depackrnc1(void *packed,void *unpacked)
{
    unsigned char *input = packed;
    unsigned char *output = unpacked;
    unsigned char *inputend, *outputend;
    bit_stream bs;
    huf_table raw, dist, len;
    unsigned long ch_count;
    unsigned long ret_len;
    unsigned out_crc;

    if (blong(input) != RNC_SIGNATURE)
 return RNC_FILE_IS_NOT_RNC;
    ret_len = blong (input+4);
    outputend = output + ret_len;
    inputend = input + 18 + blong(input+8);

    input += 18;





    if (rnc_crc(input, inputend-input) != bword(input-4))
 return RNC_PACKED_CRC_ERROR;
    out_crc = bword(input-6);

    bitread_init (&bs, &input);
    bit_advance (&bs, 2, &input);




    while (output < outputend) {
  read_huftable (&raw, &bs, &input);
  read_huftable (&dist, &bs, &input);
  read_huftable (&len, &bs, &input);
  ch_count = bit_read (&bs, 0xFFFF, 16, &input);

  while (1) {
   long length, posn;

   length = huf_read (&raw, &bs, &input);
   if (length == -1)
   return RNC_HUF_DECODE_ERROR;
   if (length) {
   while (length--)
    *output++ = *input++;
   bitread_fix (&bs, &input);
   }
   if (--ch_count <= 0)
   break;

   posn = huf_read (&dist, &bs, &input);
   if (posn == -1)
   return RNC_HUF_DECODE_ERROR;
   length = huf_read (&len, &bs, &input);
   if (length == -1)
   return RNC_HUF_DECODE_ERROR;
   posn += 1;
   length += 2;
   while (length--) {
   *output = output[-posn];
   output++;
   }
  }
    }
    if (outputend != output)
 return RNC_FILE_SIZE_MISMATCH;

    if (rnc_crc(outputend-ret_len, ret_len) != out_crc)
 return RNC_UNPACKED_CRC_ERROR;

    return ret_len;
}
