
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {int decoder; } ;
typedef TYPE_1__ lzma_codec_data ;
typedef int chd_error ;
typedef scalar_t__ SRes ;
typedef int ELzmaStatus ;


 int CHDERR_DECOMPRESSION_ERROR ;
 int CHDERR_NONE ;
 int LZMA_FINISH_END ;
 scalar_t__ LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK ;
 scalar_t__ LzmaDec_DecodeToBuf (int *,int *,size_t*,int const*,size_t*,int ,int *) ;
 int LzmaDec_Init (int *) ;
 scalar_t__ SZ_OK ;

chd_error lzma_codec_decompress(void* codec, const uint8_t *src, uint32_t complen, uint8_t *dest, uint32_t destlen)
{
 ELzmaStatus status;
   SRes res;
   size_t consumedlen, decodedlen;

 lzma_codec_data* lzma_codec = (lzma_codec_data*) codec;
 LzmaDec_Init(&lzma_codec->decoder);


 consumedlen = complen;
 decodedlen = destlen;
 res = LzmaDec_DecodeToBuf(&lzma_codec->decoder, dest, &decodedlen, src, &consumedlen, LZMA_FINISH_END, &status);
 if ((res != SZ_OK && res != LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK) || consumedlen != complen || decodedlen != destlen)
  return CHDERR_DECOMPRESSION_ERROR;
 return CHDERR_NONE;
}
