
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nLen; int wpz; } ;
typedef TYPE_1__ tSkipListKey ;
typedef int int32_t ;


 int wcscmp (int ,int ) ;

int32_t compareWStrVal(const void *pLeft, const void *pRight) {
  tSkipListKey *pL = (tSkipListKey *)pLeft;
  tSkipListKey *pR = (tSkipListKey *)pRight;

  if (pL->nLen == 0 && pR->nLen == 0) {
    return 0;
  }


  if (pL->nLen == -1) {
    return 1;
  } else if (pR->nLen == -1) {
    return -1;
  }

  int32_t ret = wcscmp(((tSkipListKey *)pLeft)->wpz, ((tSkipListKey *)pRight)->wpz);

  if (ret == 0) {
    return 0;
  } else {
    return ret > 0 ? 1 : -1;
  }
}
