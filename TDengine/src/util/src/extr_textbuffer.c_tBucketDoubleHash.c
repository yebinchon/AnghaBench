
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dMinVal; double dMaxVal; } ;
struct TYPE_5__ {int nTotalSlots; int nSlotsOfSeg; TYPE_1__ nRange; } ;
typedef TYPE_2__ tMemBucket ;
typedef int int32_t ;
typedef int int16_t ;


 int DBL_MAX ;
 int pError (char*,int,int) ;

void tBucketDoubleHash(tMemBucket *pBucket, void *value, int16_t *segIdx, int16_t *slotIdx) {
  double v = *(double *)value;

  if (pBucket->nRange.dMinVal == DBL_MAX) {




    double x = DBL_MAX / (pBucket->nTotalSlots >> 1);
    double posx = (v + DBL_MAX) / x;
    *segIdx = ((int32_t)posx) / pBucket->nSlotsOfSeg;
    *slotIdx = ((int32_t)posx) % pBucket->nSlotsOfSeg;
  } else {

    double span = pBucket->nRange.dMaxVal - pBucket->nRange.dMinVal;
    if (span < pBucket->nTotalSlots) {
      int32_t delta = (int32_t)(v - pBucket->nRange.dMinVal);
      *segIdx = delta / pBucket->nSlotsOfSeg;
      *slotIdx = delta % pBucket->nSlotsOfSeg;
    } else {
      double x = span / pBucket->nTotalSlots;
      double posx = (v - pBucket->nRange.dMinVal) / x;
      if (v == pBucket->nRange.dMaxVal) {
        posx -= 1;
      }
      *segIdx = ((int32_t)posx) / pBucket->nSlotsOfSeg;
      *slotIdx = ((int32_t)posx) % pBucket->nSlotsOfSeg;
    }

    if (*segIdx < 0 || *segIdx > 16 || *slotIdx < 0 || *slotIdx > 64) {
      pError("error in hash process. segment is: %d, slot id is: %d\n", *segIdx, *slotIdx);
    }
  }
}
