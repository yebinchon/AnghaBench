
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {size_t numOfCols; int * pColList; } ;
typedef TYPE_1__ SColumnBaseInfo ;
typedef int SColumnBase ;



SColumnBase* tscColumnBaseInfoGet(SColumnBaseInfo* pColumnBaseInfo, int32_t index) {
  if (pColumnBaseInfo == ((void*)0) || pColumnBaseInfo->numOfCols < index) {
    return ((void*)0);
  }

  return &pColumnBaseInfo->pColList[index];
}
