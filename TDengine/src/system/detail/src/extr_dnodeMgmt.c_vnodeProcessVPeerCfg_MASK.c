#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* maxSessions; int /*<<< orphan*/  replications; } ;
struct TYPE_16__ {scalar_t__ status; TYPE_2__ cfg; } ;
struct TYPE_15__ {void* vnode; void* ip; } ;
struct TYPE_11__ {void* totalBlocks; } ;
struct TYPE_13__ {int replications; void* maxSessions; void* rowsInFileBlock; int /*<<< orphan*/  blocksPerMeter; void* commitTime; void* daysToKeep; void* daysToKeep2; void* daysToKeep1; void* daysPerFile; TYPE_1__ cacheNumOfBlocks; void* cacheBlockSize; void* vgId; } ;
struct TYPE_14__ {TYPE_6__* vpeerDesc; TYPE_3__ cfg; void* vnode; } ;
typedef  TYPE_3__ SVnodeCfg ;
typedef  TYPE_4__ SVPeersMsg ;
typedef  int /*<<< orphan*/  SMgmtObj ;

/* Variables and functions */
 int TSDB_MAX_VNODES ; 
 scalar_t__ TSDB_STATUS_CREATING ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,TYPE_6__*) ; 
 int FUNC6 (int,TYPE_3__*,TYPE_6__*) ; 
 TYPE_7__* vnodeList ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int,void*,void*) ; 

int FUNC11(char *msg, int msgLen, SMgmtObj *pMgmtObj) {
  SVPeersMsg *pMsg = (SVPeersMsg *)msg;
  int         i, vnode;

  vnode = FUNC2(pMsg->vnode);
  if (vnode >= TSDB_MAX_VNODES) {
    FUNC0("vid:%d, vnode is out of range", vnode);
    return -1;
  }

  if (vnodeList[vnode].status == TSDB_STATUS_CREATING) {
    FUNC1("vid:%d, vnode is still under creating", vnode);
    return 0;
  }

  SVnodeCfg *pCfg = &pMsg->cfg;
  pCfg->vgId = FUNC2(pCfg->vgId);
  pCfg->maxSessions = FUNC2(pCfg->maxSessions);
  pCfg->cacheBlockSize = FUNC2(pCfg->cacheBlockSize);
  pCfg->cacheNumOfBlocks.totalBlocks = FUNC2(pCfg->cacheNumOfBlocks.totalBlocks);
  pCfg->daysPerFile = FUNC2(pCfg->daysPerFile);
  pCfg->daysToKeep1 = FUNC2(pCfg->daysToKeep1);
  pCfg->daysToKeep2 = FUNC2(pCfg->daysToKeep2);
  pCfg->daysToKeep = FUNC2(pCfg->daysToKeep);
  pCfg->commitTime = FUNC2(pCfg->commitTime);
  pCfg->blocksPerMeter = FUNC3(pCfg->blocksPerMeter);
  pCfg->rowsInFileBlock = FUNC2(pCfg->rowsInFileBlock);

  if (pCfg->replications > 0) {
    FUNC1("vid:%d, vpeer cfg received, replica:%d session:%d, vnodeList replica:%d session:%d",
        vnode, pCfg->replications, pCfg->maxSessions, vnodeList[vnode].cfg.replications, vnodeList[vnode].cfg.maxSessions);
    for (i = 0; i < pCfg->replications; ++i) {
      pMsg->vpeerDesc[i].vnode = FUNC2(pMsg->vpeerDesc[i].vnode);
      pMsg->vpeerDesc[i].ip = FUNC2(pMsg->vpeerDesc[i].ip);
      FUNC1("vid:%d, vpeer:%d ip:0x%x vid:%d ", vnode, i, pMsg->vpeerDesc[i].ip, pMsg->vpeerDesc[i].vnode);
    }
  }

  if (vnodeList[vnode].cfg.maxSessions == 0) {
    if (pCfg->maxSessions > 0) {
      return FUNC6(vnode, pCfg, pMsg->vpeerDesc);
    }
  } else {
    if (pCfg->maxSessions > 0) {
      if (pCfg->maxSessions != vnodeList[vnode].cfg.maxSessions) {
          FUNC4(vnode);
      }

      FUNC5(vnode, pCfg->replications, pMsg->vpeerDesc);
      FUNC9(vnode, pCfg, pMsg->vpeerDesc);

      if (pCfg->maxSessions != vnodeList[vnode].cfg.maxSessions) {
        FUNC10(vnode, vnodeList[vnode].cfg.maxSessions, pCfg->maxSessions);
        vnodeList[vnode].cfg.maxSessions = pCfg->maxSessions;
        FUNC7(vnode);
      }
    } else {
      FUNC8(vnode);
    }
  }

  return 0;
}