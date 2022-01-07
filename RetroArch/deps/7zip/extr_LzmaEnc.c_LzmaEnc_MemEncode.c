
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* outStream; } ;
struct TYPE_9__ {int writeEndMark; size_t nowPos64; TYPE_1__ rc; } ;
struct TYPE_7__ {int Write; } ;
struct TYPE_8__ {unsigned char* data; size_t rem; int overflow; TYPE_2__ funcTable; } ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef int ICompressProgress ;
typedef TYPE_3__ CSeqOutStreamBuf ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_4__ CLzmaEnc ;


 scalar_t__ LzmaEnc_Encode2 (TYPE_4__*,int *) ;
 scalar_t__ LzmaEnc_MemPrepare (scalar_t__,unsigned char const*,size_t,int ,int *,int *) ;
 int MyWrite ;
 scalar_t__ SZ_ERROR_FAIL ;
 scalar_t__ SZ_ERROR_OUTPUT_EOF ;
 scalar_t__ SZ_OK ;

SRes LzmaEnc_MemEncode(CLzmaEncHandle pp, unsigned char *dest, size_t *destLen, const unsigned char *src, size_t srcLen,
    int writeEndMark, ICompressProgress *progress, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  SRes res;
  CLzmaEnc *p = (CLzmaEnc *)pp;

  CSeqOutStreamBuf outStream;

  outStream.funcTable.Write = MyWrite;
  outStream.data = dest;
  outStream.rem = *destLen;
  outStream.overflow = 0;

  p->writeEndMark = writeEndMark;
  p->rc.outStream = &outStream.funcTable;

  res = LzmaEnc_MemPrepare(pp, src, srcLen, 0, alloc, allocBig);

  if (res == SZ_OK)
  {
    res = LzmaEnc_Encode2(p, progress);
    if (res == SZ_OK && p->nowPos64 != srcLen)
      res = SZ_ERROR_FAIL;
  }

  *destLen -= outStream.rem;
  if (outStream.overflow)
    return SZ_ERROR_OUTPUT_EOF;
  return res;
}
