
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int numOfCols; int * pColList; } ;
typedef TYPE_1__ SColumnBaseInfo ;
typedef int SColumnBase ;


 int clearVal (int *) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void _cf_evic(SColumnBaseInfo* pcolList, int32_t index) {
  if (index < pcolList->numOfCols) {
    memmove(&pcolList->pColList[index + 1], &pcolList->pColList[index],
            sizeof(SColumnBase) * (pcolList->numOfCols - index));

    clearVal(&pcolList->pColList[index]);
  }
}
