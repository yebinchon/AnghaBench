#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int igNotExists; int /*<<< orphan*/  meterId; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
struct TYPE_10__ {char* payload; int payloadLen; int /*<<< orphan*/  msgType; scalar_t__ existsCheck; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SSqlCmd ;
typedef  TYPE_3__ SMgmtHead ;
typedef  TYPE_4__ SMeterMetaInfo ;
typedef  TYPE_5__ SDropTableMsg ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_DROP_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tsRpcHeadSize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC3(SSqlObj *pSql) {
  SDropTableMsg *pDropTableMsg;
  char *         pMsg, *pStart;
  int            msgLen = 0;

  SSqlCmd *       pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = FUNC2(pCmd, 0);

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  FUNC1(pMeterMetaInfo->name, pMgmt->db);
  pMsg += sizeof(SMgmtHead);

  pDropTableMsg = (SDropTableMsg *)pMsg;
  FUNC0(pDropTableMsg->meterId, pMeterMetaInfo->name);

  pDropTableMsg->igNotExists = pCmd->existsCheck ? 1 : 0;
  pMsg += sizeof(SDropTableMsg);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_DROP_TABLE;

  return msgLen;
}