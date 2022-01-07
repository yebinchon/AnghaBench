
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {size_t dicBufSize; size_t dicPos; int * dic; } ;
struct TYPE_6__ {TYPE_2__ decoder; } ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef scalar_t__ ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef TYPE_1__ CLzma2Dec ;


 int LZMA_PROPS_SIZE ;
 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ;
 scalar_t__ LZMA_STATUS_NOT_SPECIFIED ;
 int Lzma2Dec_Construct (TYPE_1__*) ;
 scalar_t__ Lzma2Dec_DecodeToDic (TYPE_1__*,size_t,int const*,size_t*,int ,scalar_t__*) ;
 int Lzma2Dec_GetOldProps (int ,int *) ;
 int LzmaDec_AllocateProbs (TYPE_2__*,int *,int,int *) ;
 int LzmaDec_FreeProbs (TYPE_2__*,int *) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_OK ;

SRes Lzma2Decode(uint8_t *dest, size_t *destLen, const uint8_t *src, size_t *srcLen,
      uint8_t prop, ELzmaFinishMode finishMode, ELzmaStatus *status, ISzAlloc *alloc)
{
   CLzma2Dec decoder;
   SRes res;
   size_t outSize = *destLen, inSize = *srcLen;
   uint8_t props[LZMA_PROPS_SIZE];

   Lzma2Dec_Construct(&decoder);

   *destLen = *srcLen = 0;
   *status = LZMA_STATUS_NOT_SPECIFIED;
   decoder.decoder.dic = dest;
   decoder.decoder.dicBufSize = outSize;

   RINOK(Lzma2Dec_GetOldProps(prop, props));
   RINOK(LzmaDec_AllocateProbs(&decoder.decoder, props, LZMA_PROPS_SIZE, alloc));

   *srcLen = inSize;
   res = Lzma2Dec_DecodeToDic(&decoder, outSize, src, srcLen, finishMode, status);
   *destLen = decoder.decoder.dicPos;
   if (res == SZ_OK && *status == LZMA_STATUS_NEEDS_MORE_INPUT)
      res = SZ_ERROR_INPUT_EOF;

   LzmaDec_FreeProbs(&decoder.decoder, alloc);
   return res;
}
