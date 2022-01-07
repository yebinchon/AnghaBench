
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t int32_t ;
struct TYPE_5__ {size_t nSize; TYPE_1__** pData; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ nAllocSize; int pData; } ;
typedef TYPE_1__ STableDataBlocks ;
typedef TYPE_2__ SDataBlockList ;


 int realloc (int ,scalar_t__) ;

void tscFreeUnusedDataBlocks(SDataBlockList* pList) {

  for (int32_t i = 0; i < pList->nSize; ++i) {
    STableDataBlocks* pDataBlock = pList->pData[i];
    pDataBlock->pData = realloc(pDataBlock->pData, pDataBlock->size);
    pDataBlock->nAllocSize = (uint32_t)pDataBlock->size;
  }
}
