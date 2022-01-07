
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nSize; int nAlloc; int ** pData; } ;
typedef int STableDataBlocks ;
typedef TYPE_1__ SDataBlockList ;


 int memset (int **,int ,int) ;
 int ** realloc (int **,int) ;

void tscAppendDataBlock(SDataBlockList* pList, STableDataBlocks* pBlocks) {
  if (pList->nSize >= pList->nAlloc) {
    pList->nAlloc = pList->nAlloc << 1;
    pList->pData = realloc(pList->pData, sizeof(void*) * (size_t)pList->nAlloc);


    memset(pList->pData + pList->nSize, 0, sizeof(void*) * (pList->nAlloc - pList->nSize));
  }

  pList->pData[pList->nSize++] = pBlocks;
}
