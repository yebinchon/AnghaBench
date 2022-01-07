
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int numOfOutputCols; int * pFields; } ;
typedef TYPE_1__ SFieldInfo ;


 int memmove (int *,int *,int) ;

__attribute__((used)) static void evic(SFieldInfo* pFieldInfo, int32_t index) {
  if (index < pFieldInfo->numOfOutputCols) {
    memmove(&pFieldInfo->pFields[index + 1], &pFieldInfo->pFields[index],
            sizeof(pFieldInfo->pFields[0]) * (pFieldInfo->numOfOutputCols - index));
  }
}
