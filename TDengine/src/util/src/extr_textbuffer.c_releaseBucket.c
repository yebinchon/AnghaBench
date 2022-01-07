
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t numOfSlots; int ** pBuffer; } ;
typedef TYPE_1__ tMemBucketSegment ;
struct TYPE_5__ {size_t numOfSegs; TYPE_1__* pSegs; } ;
typedef TYPE_2__ tMemBucket ;
typedef size_t int32_t ;


 int tExtMemBufferDestroy (int **) ;

void releaseBucket(tMemBucket *pMemBucket, int32_t segIdx, int32_t slotIdx) {
  if (segIdx < 0 || segIdx > pMemBucket->numOfSegs || slotIdx < 0) {
    return;
  }

  tMemBucketSegment *pSeg = &pMemBucket->pSegs[segIdx];
  if (slotIdx < 0 || slotIdx >= pSeg->numOfSlots || pSeg->pBuffer[slotIdx] == ((void*)0)) {
    return;
  }

  tExtMemBufferDestroy(&pSeg->pBuffer[slotIdx]);
}
