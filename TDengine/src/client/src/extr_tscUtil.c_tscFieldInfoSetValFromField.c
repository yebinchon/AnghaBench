
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_5__ {int* pVisibleCols; scalar_t__ numOfOutputCols; int * pFields; } ;
typedef int TAOS_FIELD ;
typedef TYPE_1__ SFieldInfo ;


 int ensureSpace (TYPE_1__*,scalar_t__) ;
 int evic (TYPE_1__*,size_t) ;
 int memcpy (int *,int *,int) ;

void tscFieldInfoSetValFromField(SFieldInfo* pFieldInfo, int32_t index, TAOS_FIELD* pField) {
  ensureSpace(pFieldInfo, pFieldInfo->numOfOutputCols + 1);
  evic(pFieldInfo, index);

  memcpy(&pFieldInfo->pFields[index], pField, sizeof(TAOS_FIELD));
  pFieldInfo->pVisibleCols[index] = 1;

  pFieldInfo->numOfOutputCols++;
}
