
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double dKey; double i64Key; } ;
typedef TYPE_1__ tSkipListKey ;
typedef double int64_t ;
typedef int int32_t ;


 scalar_t__ FLT_EPSILON ;
 scalar_t__ fabs (double) ;

int32_t compareDoubleIntVal(const void *pLeft, const void *pRight) {
  double lhs = ((tSkipListKey *)pLeft)->dKey;
  int64_t rhs = ((tSkipListKey *)pRight)->i64Key;
  if (fabs(lhs - rhs) < FLT_EPSILON) {
    return 0;
  } else {
    return (lhs > rhs) ? 1 : -1;
  }
}
