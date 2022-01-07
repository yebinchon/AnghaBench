
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numOfSlots; scalar_t__* pBuffer; int * pBoundingEntries; } ;
typedef TYPE_1__ tMemBucketSegment ;
struct TYPE_6__ {size_t nSlotsOfSeg; TYPE_1__* pSegs; } ;
typedef TYPE_2__ tMemBucket ;
typedef size_t int32_t ;
typedef int MinMaxEntry ;


 int assert (int ) ;
 int getMinMaxEntryOfNearestSlotInNextSegment (TYPE_2__*,size_t) ;

__attribute__((used)) static MinMaxEntry getMinMaxEntryOfNextSlotWithData(tMemBucket *pMemBucket, int32_t segIdx, int32_t slotIdx) {
  tMemBucketSegment *pSeg = &pMemBucket->pSegs[segIdx];

  MinMaxEntry next;
  if (slotIdx == pSeg->numOfSlots - 1) {
    return getMinMaxEntryOfNearestSlotInNextSegment(pMemBucket, segIdx);
  } else {
    int32_t j = slotIdx + 1;
    for (; j < pMemBucket->nSlotsOfSeg && pMemBucket->pSegs[segIdx].pBuffer[j] == 0; ++j) {
    };

    if (j == pMemBucket->nSlotsOfSeg) {

      return getMinMaxEntryOfNearestSlotInNextSegment(pMemBucket, segIdx);
    } else {
      next = pSeg->pBoundingEntries[slotIdx + 1];
      assert(pSeg->pBuffer[slotIdx + 1] != ((void*)0));
    }
  }

  return next;
}
