#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {scalar_t__ command; } ;
struct TYPE_12__ {int /*<<< orphan*/  pColumnIndex; int /*<<< orphan*/  pGroupRec; scalar_t__ numOfGroups; scalar_t__ numOfTotal; scalar_t__ numOfRows; scalar_t__ row; int /*<<< orphan*/  pRsp; } ;
struct TYPE_13__ {TYPE_2__ res; scalar_t__ numOfSubs; int /*<<< orphan*/  pSubs; int /*<<< orphan*/  sqlstr; TYPE_1__* pTscObj; TYPE_4__ cmd; struct TYPE_13__* signature; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlRes ;
typedef  TYPE_3__ SSqlObj ;
typedef  TYPE_4__ SSqlCmd ;

/* Variables and functions */
 scalar_t__ TSDB_SQL_INSERT ; 
 scalar_t__ TSDB_SQL_METRIC_JOIN_RETRIEVE ; 
 scalar_t__ TSDB_SQL_RETRIEVE_EMPTY_RESULT ; 
 scalar_t__ TSDB_SQL_RETRIEVE_METRIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void FUNC8(SSqlObj* pSql) {
  if (pSql == NULL || pSql->signature != pSql) {
    return;
  }

  SSqlCmd* pCmd = &pSql->cmd;
  SSqlRes* pRes = &pSql->res;

  STscObj* pObj = pSql->pTscObj;

  int32_t cmd = pCmd->command;
  if (cmd < TSDB_SQL_INSERT || cmd == TSDB_SQL_RETRIEVE_METRIC || cmd == TSDB_SQL_RETRIEVE_EMPTY_RESULT ||
      cmd == TSDB_SQL_METRIC_JOIN_RETRIEVE) {
    FUNC7(pSql);
  }

  pCmd->command = -1;

  // pSql->sqlstr will be used by tscBuildQueryStreamDesc
  FUNC0(&pObj->mutex);
  FUNC2(pSql->sqlstr);
  FUNC1(&pObj->mutex);

  FUNC2(pSql->res.pRsp);
  pSql->res.row = 0;
  pSql->res.numOfRows = 0;
  pSql->res.numOfTotal = 0;

  pSql->res.numOfGroups = 0;
  FUNC2(pSql->res.pGroupRec);

  FUNC3(pSql);

  FUNC2(pSql->pSubs);
  pSql->numOfSubs = 0;
  FUNC4(pRes);
  FUNC2(pSql->res.pColumnIndex);

  FUNC5(pCmd);
  FUNC6(pCmd, false);
}