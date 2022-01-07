
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {size_t numOfOutputCols; int* pVisibleCols; scalar_t__ numOfHiddenCols; } ;
typedef TYPE_1__ SFieldInfo ;



void tscFieldInfoUpdateVisible(SFieldInfo* pFieldInfo, int32_t index, bool visible) {
  if (index < 0 || index > pFieldInfo->numOfOutputCols) {
    return;
  }

  bool oldVisible = pFieldInfo->pVisibleCols[index];
  pFieldInfo->pVisibleCols[index] = visible;

  if (oldVisible != visible) {
    if (!visible) {
      pFieldInfo->numOfHiddenCols += 1;
    } else {
      if (pFieldInfo->numOfHiddenCols > 0) {
        pFieldInfo->numOfHiddenCols -= 1;
      }
    }
  }
}
