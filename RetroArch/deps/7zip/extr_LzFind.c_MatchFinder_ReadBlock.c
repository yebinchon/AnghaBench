
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ (* Read ) (TYPE_2__*,unsigned char*,size_t*) ;} ;
struct TYPE_4__ {int streamEndWasReached; scalar_t__ result; scalar_t__ streamPos; scalar_t__ pos; scalar_t__ directInputRem; unsigned char* buffer; unsigned char* bufferBase; int blockSize; scalar_t__ keepSizeAfter; TYPE_2__* stream; scalar_t__ directInput; } ;
typedef TYPE_1__ CMatchFinder ;


 scalar_t__ SZ_OK ;
 scalar_t__ stub1 (TYPE_2__*,unsigned char*,size_t*) ;

__attribute__((used)) static void MatchFinder_ReadBlock(CMatchFinder *p)
{
  if (p->streamEndWasReached || p->result != SZ_OK)
    return;



  if (p->directInput)
  {
    uint32_t curSize = 0xFFFFFFFF - (p->streamPos - p->pos);
    if (curSize > p->directInputRem)
      curSize = (uint32_t)p->directInputRem;
    p->directInputRem -= curSize;
    p->streamPos += curSize;
    if (p->directInputRem == 0)
      p->streamEndWasReached = 1;
    return;
  }

  for (;;)
  {
    unsigned char *dest = p->buffer + (p->streamPos - p->pos);
    size_t size = (p->bufferBase + p->blockSize - dest);
    if (size == 0)
      return;

    p->result = p->stream->Read(p->stream, dest, &size);
    if (p->result != SZ_OK)
      return;
    if (size == 0)
    {
      p->streamEndWasReached = 1;
      return;
    }
    p->streamPos += (uint32_t)size;
    if (p->streamPos - p->pos > p->keepSizeAfter)
      return;
  }
}
