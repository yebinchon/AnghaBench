
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ numOfSlots; int * pBoundingEntries; int ** pBuffer; } ;
typedef TYPE_1__ tMemBucketSegment ;
struct TYPE_5__ {size_t numOfSegs; size_t nSlotsOfSeg; TYPE_1__* pSegs; } ;
typedef TYPE_2__ tMemBucket ;
typedef size_t int32_t ;
typedef int MinMaxEntry ;


 int assert (int) ;

__attribute__((used)) static MinMaxEntry getMinMaxEntryOfNearestSlotInNextSegment(tMemBucket *pMemBucket, int32_t segIdx) {
  int32_t i = segIdx + 1;
  while (i < pMemBucket->numOfSegs && pMemBucket->pSegs[i].numOfSlots == 0) ++i;

  tMemBucketSegment *pSeg = &pMemBucket->pSegs[i];
  assert(pMemBucket->numOfSegs > i && pMemBucket->pSegs[i].pBuffer != ((void*)0));

  i = 0;
  while (i < pMemBucket->nSlotsOfSeg && pSeg->pBuffer[i] == ((void*)0)) ++i;

  assert(i < pMemBucket->nSlotsOfSeg);
  return pSeg->pBoundingEntries[i];
}
