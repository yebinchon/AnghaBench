
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* params; struct TYPE_4__* pData; } ;
typedef TYPE_1__ STableDataBlocks ;


 int tfree (TYPE_1__*) ;

void tscDestroyDataBlock(STableDataBlocks* pDataBlock) {
  if (pDataBlock == ((void*)0)) {
    return;
  }

  tfree(pDataBlock->pData);
  tfree(pDataBlock->params);
  tfree(pDataBlock);
}
