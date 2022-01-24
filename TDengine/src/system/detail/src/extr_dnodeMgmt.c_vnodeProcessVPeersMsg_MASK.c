#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int code; int /*<<< orphan*/  more; } ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef  TYPE_2__ SVPeersMsg ;
typedef  TYPE_3__ STaosRsp ;
typedef  int /*<<< orphan*/  SMgmtObj ;

/* Variables and functions */
 int TSDB_DB_NAME_LEN ; 
 int /*<<< orphan*/  TSDB_MSG_TYPE_VPEERS_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ *) ; 

int FUNC4(char *msg, int msgLen, SMgmtObj *pMgmtObj) {
  int code = 0;

  code = FUNC3(msg, msgLen, pMgmtObj);

  char *      pStart;
  STaosRsp *  pRsp;
  SVPeersMsg *pVPeersMsg = (SVPeersMsg *)msg;

  pStart = FUNC1(pMgmtObj, TSDB_MSG_TYPE_VPEERS_RSP);
  if (pStart == NULL) return -1;

  pRsp = (STaosRsp *)pStart;
  pRsp->code = code;
  FUNC0(pRsp->more, pVPeersMsg->cfg.db, TSDB_DB_NAME_LEN);

  msgLen = sizeof(STaosRsp) + TSDB_DB_NAME_LEN;
  FUNC2(pMgmtObj, pStart, msgLen);

  return code;
}