
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t numOfSlots; TYPE_5__** pBuffer; } ;
typedef TYPE_2__ tMemBucketSegment ;
struct TYPE_9__ {int numOfElems; size_t numOfSegs; int dataType; TYPE_2__* pSegs; } ;
typedef TYPE_3__ tMemBucket ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_4__ tFilePage ;
struct TYPE_11__ {int numOfAllElems; int numOfElemsInBuffer; TYPE_1__* pHead; } ;
typedef TYPE_5__ tExtMemBuffer ;
typedef double int8_t ;
typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
typedef double int16_t ;
struct TYPE_7__ {TYPE_4__ item; } ;
 int assert (int) ;

double findOnlyResult(tMemBucket *pMemBucket) {
  assert(pMemBucket->numOfElems == 1);

  for (int32_t i = 0; i < pMemBucket->numOfSegs; ++i) {
    tMemBucketSegment *pSeg = &pMemBucket->pSegs[i];
    if (pSeg->pBuffer) {
      for (int32_t j = 0; j < pSeg->numOfSlots; ++j) {
        tExtMemBuffer *pBuffer = pSeg->pBuffer[j];
        if (pBuffer) {
          assert(pBuffer->numOfAllElems == 1);
          tFilePage *pPage = &pBuffer->pHead->item;
          if (pBuffer->numOfElemsInBuffer == 1) {
            switch (pMemBucket->dataType) {
              case 130:
                return *(int32_t *)pPage->data;
              case 129:
                return *(int16_t *)pPage->data;
              case 128:
                return *(int8_t *)pPage->data;
              case 133:
                return (double)(*(int64_t *)pPage->data);
              case 132:
                return *(double *)pPage->data;
              case 131:
                return *(float *)pPage->data;
              default:
                return 0;
            }
          }
        }
      }
    }
  }
  return 0;
}
