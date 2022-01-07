
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_5__ {int* pVisibleCols; scalar_t__ numOfOutputCols; int * pFields; } ;
typedef int TAOS_FIELD ;
typedef TYPE_1__ SFieldInfo ;


 int ensureSpace (TYPE_1__*,scalar_t__) ;
 int evic (TYPE_1__*,size_t) ;
 int setValueImpl (int *,int ,char*,int ) ;

void tscFieldInfoSetValue(SFieldInfo* pFieldInfo, int32_t index, int8_t type, char* name, int16_t bytes) {
  ensureSpace(pFieldInfo, pFieldInfo->numOfOutputCols + 1);
  evic(pFieldInfo, index);

  TAOS_FIELD* pField = &pFieldInfo->pFields[index];
  setValueImpl(pField, type, name, bytes);

  pFieldInfo->pVisibleCols[index] = 1;
  pFieldInfo->numOfOutputCols++;
}
