
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_5__ {size_t nSize; struct TYPE_5__* pData; } ;
typedef TYPE_1__ SDataBlockList ;


 int tfree (TYPE_1__*) ;
 int tscDestroyDataBlock (TYPE_1__) ;

void* tscDestroyBlockArrayList(SDataBlockList* pList) {
  if (pList == ((void*)0)) {
    return ((void*)0);
  }

  for (int32_t i = 0; i < pList->nSize; i++) {
    tscDestroyDataBlock(pList->pData[i]);
  }

  tfree(pList->pData);
  tfree(pList);

  return ((void*)0);
}
