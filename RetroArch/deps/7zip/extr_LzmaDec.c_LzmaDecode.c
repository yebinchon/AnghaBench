
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {size_t dicBufSize; size_t dicPos; int * dic; } ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef scalar_t__ ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef TYPE_1__ CLzmaDec ;


 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ;
 scalar_t__ LzmaDec_AllocateProbs (TYPE_1__*,int const*,unsigned int,int *) ;
 int LzmaDec_Construct (TYPE_1__*) ;
 scalar_t__ LzmaDec_DecodeToDic (TYPE_1__*,size_t,int const*,size_t*,int ,scalar_t__*) ;
 int LzmaDec_FreeProbs (TYPE_1__*,int *) ;
 int LzmaDec_Init (TYPE_1__*) ;
 size_t RC_INIT_SIZE ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_OK ;

SRes LzmaDecode(uint8_t *dest, size_t *destLen, const uint8_t *src, size_t *srcLen,
      const uint8_t *propData, unsigned propSize, ELzmaFinishMode finishMode,
      ELzmaStatus *status, ISzAlloc *alloc)
{
   CLzmaDec p;
   SRes res;
   size_t inSize = *srcLen;
   size_t outSize = *destLen;
   *srcLen = *destLen = 0;
   if (inSize < RC_INIT_SIZE)
      return SZ_ERROR_INPUT_EOF;

   LzmaDec_Construct(&p);
   res = LzmaDec_AllocateProbs(&p, propData, propSize, alloc);
   if (res != 0)
      return res;
   p.dic = dest;
   p.dicBufSize = outSize;

   LzmaDec_Init(&p);

   *srcLen = inSize;
   res = LzmaDec_DecodeToDic(&p, outSize, src, srcLen, finishMode, status);

   if (res == SZ_OK && *status == LZMA_STATUS_NEEDS_MORE_INPUT)
      res = SZ_ERROR_INPUT_EOF;

   (*destLen) = p.dicPos;
   LzmaDec_FreeProbs(&p, alloc);
   return res;
}
