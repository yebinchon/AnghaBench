
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t numOfSlots; TYPE_1__* pBoundingEntries; int * pBuffer; } ;
typedef TYPE_2__ tMemBucketSegment ;
struct TYPE_7__ {size_t numOfSegs; int dataType; TYPE_2__* pSegs; } ;
typedef TYPE_3__ tMemBucket ;
typedef size_t int32_t ;
struct TYPE_5__ {double iMinVal; double iMaxVal; double dMinVal; double dMaxVal; scalar_t__ i64MaxVal; scalar_t__ i64MinVal; } ;


 double DBL_MAX ;







__attribute__((used)) static void findMaxMinValue(tMemBucket *pMemBucket, double *maxVal, double *minVal) {
  *minVal = DBL_MAX;
  *maxVal = -DBL_MAX;

  for (int32_t i = 0; i < pMemBucket->numOfSegs; ++i) {
    tMemBucketSegment *pSeg = &pMemBucket->pSegs[i];
    if (pSeg->pBuffer == ((void*)0)) {
      continue;
    }
    switch (pMemBucket->dataType) {
      case 130:
      case 129:
      case 128: {
        for (int32_t j = 0; j < pSeg->numOfSlots; ++j) {
          double minv = pSeg->pBoundingEntries[j].iMinVal;
          double maxv = pSeg->pBoundingEntries[j].iMaxVal;

          if (*minVal > minv) {
            *minVal = minv;
          }
          if (*maxVal < maxv) {
            *maxVal = maxv;
          }
        }
        break;
      }
      case 132:
      case 131: {
        for (int32_t j = 0; j < pSeg->numOfSlots; ++j) {
          double minv = pSeg->pBoundingEntries[j].dMinVal;
          double maxv = pSeg->pBoundingEntries[j].dMaxVal;

          if (*minVal > minv) {
            *minVal = minv;
          }
          if (*maxVal < maxv) {
            *maxVal = maxv;
          }
        }
        break;
      }
      case 133: {
        for (int32_t j = 0; j < pSeg->numOfSlots; ++j) {
          double minv = (double)pSeg->pBoundingEntries[j].i64MinVal;
          double maxv = (double)pSeg->pBoundingEntries[j].i64MaxVal;

          if (*minVal > minv) {
            *minVal = minv;
          }
          if (*maxVal < maxv) {
            *maxVal = maxv;
          }
        }
        break;
      }
    }
  }
}
