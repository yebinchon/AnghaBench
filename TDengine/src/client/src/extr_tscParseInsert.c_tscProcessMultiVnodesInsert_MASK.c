#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_13__ {int nSize; int /*<<< orphan*/ ** pData; } ;
struct TYPE_12__ {scalar_t__ command; int isInsertFromFile; int vnodeIdx; TYPE_3__* pDataBlocks; } ;
struct TYPE_11__ {TYPE_2__ cmd; } ;
typedef  int /*<<< orphan*/  STableDataBlocks ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SSqlCmd ;
typedef  int /*<<< orphan*/  SMeterMetaInfo ;
typedef  TYPE_3__ SDataBlockList ;

/* Variables and functions */
 size_t TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_SQL_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,size_t,size_t) ; 

void FUNC6(SSqlObj *pSql) {
  SSqlCmd *pCmd = &pSql->cmd;

  // not insert/import, return directly
  if (pCmd->command != TSDB_SQL_INSERT) {
    return;
  }

  // SSqlCmd may have been released
  if (pCmd->pDataBlocks == NULL) {
    return;
  }

  STableDataBlocks *pDataBlock = NULL;
  SMeterMetaInfo *  pMeterMetaInfo = FUNC3(pCmd, 0);
  int32_t           code = TSDB_CODE_SUCCESS;

  /* the first block has been sent to server in processSQL function */
  FUNC0(pCmd->isInsertFromFile != -1 && pCmd->vnodeIdx >= 1 && pCmd->pDataBlocks != NULL);

  if (pCmd->vnodeIdx < pCmd->pDataBlocks->nSize) {
    SDataBlockList *pDataBlocks = pCmd->pDataBlocks;

    for (int32_t i = pCmd->vnodeIdx; i < pDataBlocks->nSize; ++i) {
      pDataBlock = pDataBlocks->pData[i];
      if (pDataBlock == NULL) {
        continue;
      }

      if ((code = FUNC1(pSql, pDataBlock)) != TSDB_CODE_SUCCESS) {
        FUNC5("%p build submit data block failed, vnodeIdx:%d, total:%d", pSql, pCmd->vnodeIdx, pDataBlocks->nSize);
        continue;
      }

      FUNC4(pSql);
    }
  }

  // all data have been submit to vnode, release data blocks
  pCmd->pDataBlocks = FUNC2(pCmd->pDataBlocks);
}