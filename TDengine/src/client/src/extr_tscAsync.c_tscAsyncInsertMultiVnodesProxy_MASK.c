#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ nSize; int /*<<< orphan*/ * pData; } ;
struct TYPE_10__ {scalar_t__ vnodeIdx; TYPE_3__* pDataBlocks; int /*<<< orphan*/  isInsertFromFile; } ;
struct TYPE_9__ {int /*<<< orphan*/  param; int /*<<< orphan*/  (* fp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* fetchFp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;struct TYPE_9__* signature; TYPE_2__ cmd; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SSqlCmd ;
typedef  TYPE_3__ SDataBlockList ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,...) ; 

void FUNC6(void *param, TAOS_RES *tres, int numOfRows) {
  SSqlObj *pSql = (SSqlObj *)param;
  SSqlCmd *pCmd = &pSql->cmd;
  int32_t  code = TSDB_CODE_SUCCESS;

  FUNC0(!pCmd->isInsertFromFile && pSql->signature == pSql);

  SDataBlockList *pDataBlocks = pCmd->pDataBlocks;
  if (pDataBlocks == NULL || pCmd->vnodeIdx >= pDataBlocks->nSize) {
    // restore user defined fp
    pSql->fp = pSql->fetchFp;
    FUNC5("%p Async insertion completed, destroy data block list", pSql);

    // release data block data
    pCmd->pDataBlocks = FUNC3(pCmd->pDataBlocks);

    // all data has been sent to vnode, call user function
    (*pSql->fp)(pSql->param, tres, numOfRows);
  } else {
    do {
      code = FUNC2(pSql, pDataBlocks->pData[pCmd->vnodeIdx++]);
      if (code != TSDB_CODE_SUCCESS) {
        FUNC5("%p prepare submit data block failed in async insertion, vnodeIdx:%d, total:%d, code:%d",
                 pSql, pCmd->vnodeIdx - 1, pDataBlocks->nSize, code);
      }

    } while (code != TSDB_CODE_SUCCESS && pCmd->vnodeIdx < pDataBlocks->nSize);

    // build submit msg may fail
    if (code == TSDB_CODE_SUCCESS) {
      FUNC5("%p async insertion, vnodeIdx:%d, total:%d", pSql, pCmd->vnodeIdx - 1, pDataBlocks->nSize);
      FUNC4(pSql);
    }
  }
}