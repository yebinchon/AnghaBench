#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  db; } ;
struct TYPE_12__ {char* payload; int payloadLen; int /*<<< orphan*/  msgType; } ;
struct TYPE_11__ {TYPE_1__* pTscObj; TYPE_3__ cmd; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SMgmtHead ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_HEARTBEAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tsRpcHeadSize ; 
 scalar_t__ FUNC5 (TYPE_3__*,int) ; 
 char* FUNC6 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 

int FUNC9(SSqlObj *pSql) {
  char *pMsg, *pStart;
  int   msgLen = 0;
  int   size = 0;

  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;

  FUNC2(&pObj->mutex);

  size = FUNC8(pSql);
  if (TSDB_CODE_SUCCESS != FUNC5(pCmd, size)) {
    FUNC7("%p failed to malloc for heartbeat msg", pSql);
    return -1;
  }

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  FUNC4(pMgmt->db, pObj->db);
  pMsg += sizeof(SMgmtHead);

  pMsg = FUNC6(pMsg, pObj);
  FUNC3(&pObj->mutex);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_HEARTBEAT;

  FUNC0(msgLen + FUNC1() <= size);
  return msgLen;
}