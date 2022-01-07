
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i64MaxVal; int i64MinVal; } ;
struct TYPE_5__ {int nTotalSlots; int nSlotsOfSeg; TYPE_1__ nRange; } ;
typedef TYPE_2__ tMemBucket ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int INT64_MIN ;

void tBucketBigIntHash(tMemBucket *pBucket, void *value, int16_t *segIdx, int16_t *slotIdx) {
  int64_t v = *(int64_t *)value;

  if (pBucket->nRange.i64MaxVal == INT64_MIN) {
    if (v >= 0) {
      *segIdx = ((v >> (64 - 9)) >> 6) + 8;
      *slotIdx = (v >> (64 - 9)) & 0x3F;
    } else {
      *segIdx = ((-v) >> (64 - 9)) >> 6;
      *slotIdx = ((-v) >> (64 - 9)) & 0x3F;
      *segIdx = 7 - (*segIdx);
    }
  } else {

    int64_t span = pBucket->nRange.i64MaxVal - pBucket->nRange.i64MinVal;
    if (span < pBucket->nTotalSlots) {
      int32_t delta = (int32_t)(v - pBucket->nRange.i64MinVal);
      *segIdx = delta / pBucket->nSlotsOfSeg;
      *slotIdx = delta % pBucket->nSlotsOfSeg;
    } else {
      double x = (double)span / pBucket->nTotalSlots;
      double posx = (v - pBucket->nRange.i64MinVal) / x;
      if (v == pBucket->nRange.i64MaxVal) {
        posx -= 1;
      }

      *segIdx = ((int32_t)posx) / pBucket->nSlotsOfSeg;
      *slotIdx = ((int32_t)posx) % pBucket->nSlotsOfSeg;
    }
  }
}
