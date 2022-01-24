#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ ahandle; } ;
struct TYPE_13__ {int command; } ;
struct TYPE_11__ {int code; int numOfRows; } ;
struct TYPE_12__ {int /*<<< orphan*/  param; int /*<<< orphan*/  (* fp ) (int /*<<< orphan*/ ,void*,int) ;int /*<<< orphan*/  (* fetchFp ) (int /*<<< orphan*/ ,void*,int) ;int /*<<< orphan*/ * thandle; int /*<<< orphan*/  vnode; int /*<<< orphan*/  ip; int /*<<< orphan*/ * pStream; TYPE_2__ res; TYPE_4__ cmd; TYPE_1__* pTscObj; } ;
struct TYPE_10__ {int /*<<< orphan*/  user; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlRes ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ SSqlCmd ;
typedef  TYPE_5__ SSchedMsg ;

/* Variables and functions */
 int TSDB_CODE_ACTION_IN_PROGRESS ; 
 int TSDB_CODE_SUCCESS ; 
 int TSDB_SQL_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscConnCache ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__* tscKeepConn ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__*) ; 

void FUNC6(SSchedMsg *pMsg) {
  SSqlObj *pSql = (SSqlObj *)pMsg->ahandle;
  STscObj *pTscObj = pSql->pTscObj;
  SSqlCmd *pCmd = &pSql->cmd;
  SSqlRes *pRes = &pSql->res;

  void *taosres = pSql;

  // pCmd may be released, so cache pCmd->command
  int cmd = pCmd->command;
  int code = pRes->code ? -pRes->code : pRes->numOfRows;

  if ((tscKeepConn[cmd] == 0 || (code != TSDB_CODE_SUCCESS && code != TSDB_CODE_ACTION_IN_PROGRESS)) &&
      pSql->pStream == NULL) {
    if (pSql->thandle) FUNC2(tscConnCache, pSql->thandle, pSql->ip, pSql->vnode, pTscObj->user);

    pSql->thandle = NULL;
  }

  // in case of async insert, restore the user specified callback function
  bool shouldFree = FUNC4(pSql);

  if (cmd == TSDB_SQL_INSERT) {
    FUNC0(pSql->fp != NULL);
    pSql->fp = pSql->fetchFp;
  }

  (*pSql->fp)(pSql->param, taosres, code);

  if (shouldFree) {
    FUNC3(pSql);
    FUNC5("%p Async sql is automatically freed in async res", pSql);
  }
}