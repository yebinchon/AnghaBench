
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int directInput; unsigned char* bufferBase; size_t directInputRem; } ;
struct TYPE_5__ {TYPE_1__ matchFinderBase; } ;
typedef TYPE_2__ CLzmaEnc ;



__attribute__((used)) static void LzmaEnc_SetInputBuf(CLzmaEnc *p, const unsigned char *src, size_t srcLen)
{
  p->matchFinderBase.directInput = 1;
  p->matchFinderBase.bufferBase = (unsigned char *)src;
  p->matchFinderBase.directInputRem = srcLen;
}
