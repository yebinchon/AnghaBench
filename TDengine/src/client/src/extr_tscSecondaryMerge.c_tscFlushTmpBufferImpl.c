
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ numOfOrderedCols; } ;
struct TYPE_9__ {TYPE_6__* pSchema; TYPE_1__ orderIdx; } ;
typedef TYPE_2__ tOrderDescriptor ;
struct TYPE_10__ {scalar_t__ numOfElems; int data; } ;
typedef TYPE_3__ tFilePage ;
typedef int tExtMemBuffer ;
typedef int int32_t ;
struct TYPE_11__ {scalar_t__ maxCapacity; } ;


 int assert (int) ;
 int printf (char*,scalar_t__) ;
 int tColDataQSort (TYPE_2__*,scalar_t__,int ,scalar_t__,int ,int) ;
 int tColModelDisplay (TYPE_6__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ tExtMemBufferPut (int *,int ,scalar_t__) ;
 int tscError (char*) ;

__attribute__((used)) static int32_t tscFlushTmpBufferImpl(tExtMemBuffer *pMemoryBuf, tOrderDescriptor *pDesc, tFilePage *pPage,
                                     int32_t orderType) {
  if (pPage->numOfElems == 0) {
    return 0;
  }

  assert(pPage->numOfElems <= pDesc->pSchema->maxCapacity);


  if (pDesc->orderIdx.numOfOrderedCols > 0) {
    tColDataQSort(pDesc, pPage->numOfElems, 0, pPage->numOfElems - 1, pPage->data, orderType);
  }







  if (tExtMemBufferPut(pMemoryBuf, pPage->data, pPage->numOfElems) < 0) {
    tscError("failed to save data in temporary buffer");
    return -1;
  }

  pPage->numOfElems = 0;
  return 0;
}
