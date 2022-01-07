
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ nSize; int * pData; } ;
struct TYPE_10__ {scalar_t__ vnodeIdx; TYPE_3__* pDataBlocks; int isInsertFromFile; } ;
struct TYPE_9__ {int param; int (* fp ) (int ,int *,int) ;int (* fetchFp ) (int ,int *,int) ;struct TYPE_9__* signature; TYPE_2__ cmd; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;
typedef TYPE_3__ SDataBlockList ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int assert (int) ;
 int stub1 (int ,int *,int) ;
 scalar_t__ tscCopyDataBlockToPayload (TYPE_1__*,int ) ;
 TYPE_3__* tscDestroyBlockArrayList (TYPE_3__*) ;
 int tscProcessSql (TYPE_1__*) ;
 int tscTrace (char*,TYPE_1__*,...) ;

void tscAsyncInsertMultiVnodesProxy(void *param, TAOS_RES *tres, int numOfRows) {
  SSqlObj *pSql = (SSqlObj *)param;
  SSqlCmd *pCmd = &pSql->cmd;
  int32_t code = TSDB_CODE_SUCCESS;

  assert(!pCmd->isInsertFromFile && pSql->signature == pSql);

  SDataBlockList *pDataBlocks = pCmd->pDataBlocks;
  if (pDataBlocks == ((void*)0) || pCmd->vnodeIdx >= pDataBlocks->nSize) {

    pSql->fp = pSql->fetchFp;
    tscTrace("%p Async insertion completed, destroy data block list", pSql);


    pCmd->pDataBlocks = tscDestroyBlockArrayList(pCmd->pDataBlocks);


    (*pSql->fp)(pSql->param, tres, numOfRows);
  } else {
    do {
      code = tscCopyDataBlockToPayload(pSql, pDataBlocks->pData[pCmd->vnodeIdx++]);
      if (code != TSDB_CODE_SUCCESS) {
        tscTrace("%p prepare submit data block failed in async insertion, vnodeIdx:%d, total:%d, code:%d",
                 pSql, pCmd->vnodeIdx - 1, pDataBlocks->nSize, code);
      }

    } while (code != TSDB_CODE_SUCCESS && pCmd->vnodeIdx < pDataBlocks->nSize);


    if (code == TSDB_CODE_SUCCESS) {
      tscTrace("%p async insertion, vnodeIdx:%d, total:%d", pSql, pCmd->vnodeIdx - 1, pDataBlocks->nSize);
      tscProcessSql(pSql);
    }
  }
}
