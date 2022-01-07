
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t numOfSlots; TYPE_1__** pBuffer; } ;
typedef TYPE_2__ tMemBucketSegment ;
struct TYPE_7__ {size_t numOfSegs; TYPE_2__* pSegs; } ;
typedef TYPE_3__ tMemBucket ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_5__ {size_t numOfPagesInMem; } ;



__attribute__((used)) static void tBucketGetMaxMemSlot(tMemBucket *pBucket, int16_t *segIdx, int16_t *slotIdx) {
  *segIdx = -1;
  *slotIdx = -1;

  int32_t val = 0;
  for (int32_t k = 0; k < pBucket->numOfSegs; ++k) {
    tMemBucketSegment *pSeg = &pBucket->pSegs[k];
    for (int32_t i = 0; i < pSeg->numOfSlots; ++i) {
      if (pSeg->pBuffer == ((void*)0) || pSeg->pBuffer[i] == ((void*)0)) {
        continue;
      }

      if (val < pSeg->pBuffer[i]->numOfPagesInMem) {
        val = pSeg->pBuffer[i]->numOfPagesInMem;
        *segIdx = k;
        *slotIdx = i;
      }
    }
  }
}
