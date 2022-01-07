
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int dictSize; int pb; int lp; scalar_t__ lc; } ;
typedef int SRes ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_1__ CLzmaEnc ;


 size_t LZMA_PROPS_SIZE ;
 int SZ_ERROR_PARAM ;
 int SZ_OK ;

SRes LzmaEnc_WriteProperties(CLzmaEncHandle pp, unsigned char *props, size_t *size)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  unsigned i;
  uint32_t dictSize = p->dictSize;
  if (*size < LZMA_PROPS_SIZE)
    return SZ_ERROR_PARAM;
  *size = LZMA_PROPS_SIZE;
  props[0] = (unsigned char)((p->pb * 5 + p->lp) * 9 + p->lc);

  if (dictSize >= ((uint32_t)1 << 22))
  {
    uint32_t kDictMask = ((uint32_t)1 << 20) - 1;
    if (dictSize < (uint32_t)0xFFFFFFFF - kDictMask)
      dictSize = (dictSize + kDictMask) & ~kDictMask;
  }
  else for (i = 11; i <= 30; i++)
  {
    if (dictSize <= ((uint32_t)2 << i)) { dictSize = (2 << i); break; }
    if (dictSize <= ((uint32_t)3 << i)) { dictSize = (3 << i); break; }
  }

  for (i = 0; i < 4; i++)
    props[1 + i] = (unsigned char)(dictSize >> (8 * i));
  return SZ_OK;
}
