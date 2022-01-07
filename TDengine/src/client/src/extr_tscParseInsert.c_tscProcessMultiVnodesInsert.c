
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_13__ {int nSize; int ** pData; } ;
struct TYPE_12__ {scalar_t__ command; int isInsertFromFile; int vnodeIdx; TYPE_3__* pDataBlocks; } ;
struct TYPE_11__ {TYPE_2__ cmd; } ;
typedef int STableDataBlocks ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;
typedef int SMeterMetaInfo ;
typedef TYPE_3__ SDataBlockList ;


 size_t TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_SQL_INSERT ;
 int assert (int) ;
 size_t tscCopyDataBlockToPayload (TYPE_1__*,int *) ;
 TYPE_3__* tscDestroyBlockArrayList (TYPE_3__*) ;
 int * tscGetMeterMetaInfo (TYPE_2__*,int ) ;
 int tscProcessSql (TYPE_1__*) ;
 int tscTrace (char*,TYPE_1__*,size_t,size_t) ;

void tscProcessMultiVnodesInsert(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;


  if (pCmd->command != TSDB_SQL_INSERT) {
    return;
  }


  if (pCmd->pDataBlocks == ((void*)0)) {
    return;
  }

  STableDataBlocks *pDataBlock = ((void*)0);
  SMeterMetaInfo * pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  int32_t code = TSDB_CODE_SUCCESS;


  assert(pCmd->isInsertFromFile != -1 && pCmd->vnodeIdx >= 1 && pCmd->pDataBlocks != ((void*)0));

  if (pCmd->vnodeIdx < pCmd->pDataBlocks->nSize) {
    SDataBlockList *pDataBlocks = pCmd->pDataBlocks;

    for (int32_t i = pCmd->vnodeIdx; i < pDataBlocks->nSize; ++i) {
      pDataBlock = pDataBlocks->pData[i];
      if (pDataBlock == ((void*)0)) {
        continue;
      }

      if ((code = tscCopyDataBlockToPayload(pSql, pDataBlock)) != TSDB_CODE_SUCCESS) {
        tscTrace("%p build submit data block failed, vnodeIdx:%d, total:%d", pSql, pCmd->vnodeIdx, pDataBlocks->nSize);
        continue;
      }

      tscProcessSql(pSql);
    }
  }


  pCmd->pDataBlocks = tscDestroyBlockArrayList(pCmd->pDataBlocks);
}
