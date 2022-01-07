
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int dicSize; int lc; int pb; int lp; } ;
typedef int SRes ;
typedef TYPE_1__ CLzmaProps ;


 int LZMA_DIC_MIN ;
 unsigned int LZMA_PROPS_SIZE ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;

SRes LzmaProps_Decode(CLzmaProps *p, const uint8_t *data, unsigned size)
{
   uint32_t dicSize;
   uint8_t d;

   if (size < LZMA_PROPS_SIZE)
      return SZ_ERROR_UNSUPPORTED;
   else
      dicSize = data[1] | ((uint32_t)data[2] << 8) | ((uint32_t)data[3] << 16) | ((uint32_t)data[4] << 24);

   if (dicSize < LZMA_DIC_MIN)
      dicSize = LZMA_DIC_MIN;
   p->dicSize = dicSize;

   d = data[0];
   if (d >= (9 * 5 * 5))
      return SZ_ERROR_UNSUPPORTED;

   p->lc = d % 9;
   d /= 9;
   p->pb = d / 5;
   p->lp = d % 5;

   return SZ_OK;
}
