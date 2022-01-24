#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_11__ {scalar_t__ accessState; void* maxConnections; void* maxQueryTime; void* maxStorage; void* maxPointsPerSecond; void* maxStreams; void* maxTimeSeries; void* maxDbs; void* maxUsers; } ;
struct TYPE_17__ {TYPE_1__ cfg; int /*<<< orphan*/  pass; int /*<<< orphan*/  user; } ;
struct TYPE_16__ {char* name; } ;
struct TYPE_15__ {int /*<<< orphan*/  db; } ;
struct TYPE_14__ {char* payload; int payloadLen; scalar_t__* defaultVal; } ;
struct TYPE_13__ {TYPE_2__* pTscObj; TYPE_4__ cmd; } ;
struct TYPE_12__ {char* db; } ;
typedef  TYPE_2__ STscObj ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ SSqlCmd ;
typedef  TYPE_5__ SMgmtHead ;
typedef  TYPE_6__ SMeterMetaInfo ;
typedef  TYPE_7__ SCreateAcctMsg ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int tsRpcHeadSize ; 
 TYPE_6__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(SSqlObj *pSql) {
  SCreateAcctMsg *pAlterMsg;
  char *          pMsg, *pStart;
  int             msgLen = 0;

  SSqlCmd *       pCmd = &pSql->cmd;
  STscObj *       pObj = pSql->pTscObj;
  SMeterMetaInfo *pMeterMetaInfo = FUNC3(pCmd, 0);

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  FUNC2(pMgmt->db, pObj->db);
  pMsg += sizeof(SMgmtHead);

  pAlterMsg = (SCreateAcctMsg *)pMsg;
  FUNC2(pAlterMsg->user, pMeterMetaInfo->name);
  FUNC2(pAlterMsg->pass, pCmd->payload);

  pMsg += sizeof(SCreateAcctMsg);

  pAlterMsg->cfg.maxUsers = FUNC1((int32_t)pCmd->defaultVal[0]);
  pAlterMsg->cfg.maxDbs = FUNC1((int32_t)pCmd->defaultVal[1]);
  pAlterMsg->cfg.maxTimeSeries = FUNC1((int32_t)pCmd->defaultVal[2]);
  pAlterMsg->cfg.maxStreams = FUNC1((int32_t)pCmd->defaultVal[3]);
  pAlterMsg->cfg.maxPointsPerSecond = FUNC1((int32_t)pCmd->defaultVal[4]);
  pAlterMsg->cfg.maxStorage = FUNC0(pCmd->defaultVal[5]);
  pAlterMsg->cfg.maxQueryTime = FUNC0(pCmd->defaultVal[6]);
  pAlterMsg->cfg.maxConnections = FUNC1((int32_t)pCmd->defaultVal[7]);
  pAlterMsg->cfg.accessState = (int8_t)pCmd->defaultVal[8];

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;

  return msgLen;
}