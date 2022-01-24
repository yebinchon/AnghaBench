#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_9__ {int numOfRows; int code; scalar_t__ numOfTotal; } ;
struct TYPE_10__ {int /*<<< orphan*/ * sqlstr; TYPE_2__ res; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; int /*<<< orphan*/  acctId; TYPE_3__* pSql; struct TYPE_8__* signature; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlRes ;
typedef  TYPE_3__ SSqlObj ;

/* Variables and functions */
 int TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int TSDB_CODE_DISCONNECTED ; 
 int TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_MAX_SQL_LEN ; 
 int globalCode ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_3__*,...) ; 

int FUNC8(TAOS *taos, const char *sql) {
  STscObj *pObj = (STscObj *)taos;
  if (pObj == NULL || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return TSDB_CODE_DISCONNECTED;
  }

  SSqlObj *pSql = pObj->pSql;
  SSqlRes *pRes = &pSql->res;

  pRes->numOfRows = 1;
  pRes->numOfTotal = 0;

  FUNC7("%p Valid SQL: %s pObj:%p", pSql, sql, pObj);

  int32_t sqlLen = FUNC1(sql);
  if (sqlLen > TSDB_MAX_SQL_LEN) {
    FUNC6("%p sql too long", pSql);
    pRes->code = TSDB_CODE_INVALID_SQL;
    return pRes->code;
  }

  pSql->sqlstr = FUNC0(pSql->sqlstr, sqlLen + 1);
  if (pSql->sqlstr == NULL) {
    pRes->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
    FUNC6("%p failed to malloc sql string buffer", pSql);
    FUNC7("%p Valid SQL result:%d, %s pObj:%p", pSql, pRes->code, FUNC3(taos), pObj);
    return pRes->code;
  }

  FUNC2(pSql->sqlstr, sql);

  pRes->code = (uint8_t)FUNC5(pSql, pObj->acctId, pObj->db, false);
  int code = pRes->code;

  FUNC7("%p Valid SQL result:%d, %s pObj:%p", pSql, pRes->code, FUNC3(taos), pObj);
  FUNC4(pSql);

  return code;
}