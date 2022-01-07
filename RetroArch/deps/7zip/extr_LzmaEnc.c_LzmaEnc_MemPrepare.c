
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int needInit; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_1__ CLzmaEnc ;


 int LzmaEnc_AllocAndInit (TYPE_1__*,int ,int *,int *) ;
 int LzmaEnc_SetInputBuf (TYPE_1__*,unsigned char const*,size_t) ;

SRes LzmaEnc_MemPrepare(CLzmaEncHandle pp, const unsigned char *src, size_t srcLen,
    uint32_t keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  LzmaEnc_SetInputBuf(p, src, srcLen);
  p->needInit = 1;

  return LzmaEnc_AllocAndInit(p, keepWindowSize, alloc, allocBig);
}
