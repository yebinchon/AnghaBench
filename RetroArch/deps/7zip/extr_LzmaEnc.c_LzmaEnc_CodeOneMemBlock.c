
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_11__ {TYPE_1__* outStream; } ;
struct TYPE_10__ {int writeEndMark; int finished; scalar_t__ nowPos64; TYPE_4__ rc; int result; } ;
struct TYPE_8__ {int Write; } ;
struct TYPE_9__ {unsigned char* data; size_t rem; int overflow; TYPE_1__ funcTable; } ;
typedef int SRes ;
typedef TYPE_2__ CSeqOutStreamBuf ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_3__ CLzmaEnc ;


 int LzmaEnc_CodeOneBlock (TYPE_3__*,int,scalar_t__,scalar_t__) ;
 int LzmaEnc_Init (TYPE_3__*) ;
 int LzmaEnc_InitPrices (TYPE_3__*) ;
 int MyWrite ;
 int RangeEnc_Init (TYPE_4__*) ;
 int SZ_ERROR_OUTPUT_EOF ;
 int SZ_OK ;

SRes LzmaEnc_CodeOneMemBlock(CLzmaEncHandle pp, bool reInit,
    unsigned char *dest, size_t *destLen, uint32_t desiredPackSize, uint32_t *unpackSize)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  uint64_t nowPos64;
  SRes res;
  CSeqOutStreamBuf outStream;

  outStream.funcTable.Write = MyWrite;
  outStream.data = dest;
  outStream.rem = *destLen;
  outStream.overflow = 0;

  p->writeEndMark = 0;
  p->finished = 0;
  p->result = SZ_OK;

  if (reInit)
    LzmaEnc_Init(p);
  LzmaEnc_InitPrices(p);
  nowPos64 = p->nowPos64;
  RangeEnc_Init(&p->rc);
  p->rc.outStream = &outStream.funcTable;

  res = LzmaEnc_CodeOneBlock(p, 1, desiredPackSize, *unpackSize);

  *unpackSize = (uint32_t)(p->nowPos64 - nowPos64);
  *destLen -= outStream.rem;
  if (outStream.overflow)
    return SZ_ERROR_OUTPUT_EOF;

  return res;
}
