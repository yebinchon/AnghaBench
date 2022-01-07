
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i64Key; } ;
typedef TYPE_1__ tSkipListKey ;
typedef int int64_t ;
typedef int int32_t ;


 int DEFAULT_COMP (int ,int ) ;

int32_t compareIntVal(const void *pLeft, const void *pRight) {
  int64_t lhs = ((tSkipListKey *)pLeft)->i64Key;
  int64_t rhs = ((tSkipListKey *)pRight)->i64Key;

  DEFAULT_COMP(lhs, rhs);
}
