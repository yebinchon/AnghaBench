
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double dKey; } ;
typedef TYPE_1__ tSkipListKey ;
typedef int int32_t ;


 scalar_t__ FLT_EPSILON ;
 scalar_t__ fabs (double) ;

int32_t compareDoubleVal(const void *pLeft, const void *pRight) {
  double ret = (((tSkipListKey *)pLeft)->dKey - ((tSkipListKey *)pRight)->dKey);
  if (fabs(ret) < FLT_EPSILON) {
    return 0;
  } else {
    return ret > 0 ? 1 : -1;
  }
}
