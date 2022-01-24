#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int code; } ;
struct TYPE_11__ {void* sqlstr; TYPE_2__ res; } ;
struct TYPE_9__ {TYPE_3__* pSql; struct TYPE_9__* signature; } ;
typedef  int /*<<< orphan*/  TAOS ;
typedef  TYPE_1__ STscObj ;
typedef  TYPE_2__ SSqlRes ;
typedef  TYPE_3__ SSqlObj ;

/* Variables and functions */
 int TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 int TSDB_CODE_DISCONNECTED ; 
 int TSDB_CODE_INVALID_SQL ; 
 size_t TSDB_MAX_SQL_LEN ; 
 int globalCode ; 
 void* FUNC0 (void*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC7(TAOS *taos, const char *sqlstr) {
  STscObj *pObj = (STscObj *)taos;
  if (pObj == NULL || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return TSDB_CODE_DISCONNECTED;
  }

  SSqlObj *pSql = pObj->pSql;
  SSqlRes *pRes = &pSql->res;

  size_t sqlLen = FUNC1(sqlstr);
  if (sqlLen > TSDB_MAX_SQL_LEN) {
    FUNC5("%p sql too long", pSql);
    pRes->code = TSDB_CODE_INVALID_SQL;
    return pRes->code;
  }

  void *sql = FUNC0(pSql->sqlstr, sqlLen + 1);
  if (sql == NULL) {
    pRes->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
    FUNC5("%p failed to malloc sql string buffer", pSql);
    FUNC6("%p SQL result:%d, %s pObj:%p", pSql, pRes->code, FUNC3(taos), pObj);
    return pRes->code;
  }

  pSql->sqlstr = sql;
  FUNC2(pSql->sqlstr, sqlstr);
  return FUNC4(pObj, pSql);
}