
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iMaxVal; int iMinVal; } ;
struct TYPE_5__ {int nTotalSlots; int nSlotsOfSeg; TYPE_1__ nRange; } ;
typedef TYPE_2__ tMemBucket ;
typedef int int32_t ;
typedef int int16_t ;


 int INT32_MIN ;

void tBucketIntHash(tMemBucket *pBucket, void *value, int16_t *segIdx, int16_t *slotIdx) {
  int32_t v = *(int32_t *)value;

  if (pBucket->nRange.iMaxVal == INT32_MIN) {







    if (v >= 0) {
      *segIdx = ((v >> (32 - 9)) >> 6) + 8;
      *slotIdx = (v >> (32 - 9)) & 0x3F;
    } else {
      *segIdx = ((-v) >> (32 - 9)) >> 6;
      *slotIdx = ((-v) >> (32 - 9)) & 0x3F;
      *segIdx = 7 - (*segIdx);
    }
  } else {

    int32_t span = pBucket->nRange.iMaxVal - pBucket->nRange.iMinVal;
    if (span < pBucket->nTotalSlots) {
      int32_t delta = v - pBucket->nRange.iMinVal;
      *segIdx = delta / pBucket->nSlotsOfSeg;
      *slotIdx = delta % pBucket->nSlotsOfSeg;
    } else {
      double x = (double)span / pBucket->nTotalSlots;
      double posx = (v - pBucket->nRange.iMinVal) / x;
      if (v == pBucket->nRange.iMaxVal) {
        posx -= 1;
      }
      *segIdx = ((int32_t)posx) / pBucket->nSlotsOfSeg;
      *slotIdx = ((int32_t)posx) % pBucket->nSlotsOfSeg;
    }
  }
}
