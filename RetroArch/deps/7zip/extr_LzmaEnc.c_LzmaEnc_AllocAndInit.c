
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int dictSize; int distTableSize; int finished; scalar_t__ nowPos64; int result; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef TYPE_1__ CLzmaEnc ;


 int LzmaEnc_Alloc (TYPE_1__*,int,int *,int *) ;
 int LzmaEnc_Init (TYPE_1__*) ;
 int LzmaEnc_InitPrices (TYPE_1__*) ;
 int RINOK (int ) ;
 int SZ_OK ;
 scalar_t__ kDicLogSizeMaxCompress ;

__attribute__((used)) static SRes LzmaEnc_AllocAndInit(CLzmaEnc *p, uint32_t keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  uint32_t i;
  for (i = 0; i < (uint32_t)kDicLogSizeMaxCompress; i++)
    if (p->dictSize <= ((uint32_t)1 << i))
      break;
  p->distTableSize = i * 2;

  p->finished = 0;
  p->result = SZ_OK;
  RINOK(LzmaEnc_Alloc(p, keepWindowSize, alloc, allocBig));
  LzmaEnc_Init(p);
  LzmaEnc_InitPrices(p);
  p->nowPos64 = 0;
  return SZ_OK;
}
