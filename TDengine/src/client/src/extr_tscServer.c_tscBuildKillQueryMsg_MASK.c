#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  queryId; scalar_t__ handle; } ;
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
struct TYPE_9__ {char* payload; int payloadLen; int /*<<< orphan*/  msgType; } ;
struct TYPE_8__ {TYPE_1__* pTscObj; TYPE_3__ cmd; } ;
struct TYPE_7__ {char* db; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlObj ;
typedef  TYPE_3__ SSqlCmd ;
typedef  TYPE_4__ SMgmtHead ;
typedef  TYPE_5__ SKillQuery ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_MSG_TYPE_KILL_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int tsRpcHeadSize ; 

int FUNC1(SSqlObj *pSql) {
  SKillQuery *pKill;
  char *      pMsg, *pStart;
  int         msgLen = 0;

  SSqlCmd *pCmd = &pSql->cmd;
  STscObj *pObj = pSql->pTscObj;
  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  FUNC0(pMgmt->db, pObj->db);
  pMsg += sizeof(SMgmtHead);

  pKill = (SKillQuery *)pMsg;
  pKill->handle = 0;
  FUNC0(pKill->queryId, pCmd->payload);

  pMsg += sizeof(SKillQuery);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_KILL_QUERY;

  return msgLen;
}