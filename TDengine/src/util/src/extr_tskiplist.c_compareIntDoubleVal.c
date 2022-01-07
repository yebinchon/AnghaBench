
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double i64Key; double dKey; } ;
typedef TYPE_1__ tSkipListKey ;
typedef double int64_t ;
typedef int int32_t ;


 scalar_t__ FLT_EPSILON ;
 scalar_t__ fabs (double) ;

int32_t compareIntDoubleVal(const void *pLeft, const void *pRight) {
  int64_t lhs = ((tSkipListKey *)pLeft)->i64Key;
  double rhs = ((tSkipListKey *)pRight)->dKey;
  if (fabs(lhs - rhs) < FLT_EPSILON) {
    return 0;
  } else {
    return (lhs > rhs) ? 1 : -1;
  }
}
