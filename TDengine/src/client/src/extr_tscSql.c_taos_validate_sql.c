
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_9__ {int numOfRows; int code; scalar_t__ numOfTotal; } ;
struct TYPE_10__ {int * sqlstr; TYPE_2__ res; } ;
struct TYPE_8__ {int db; int acctId; TYPE_3__* pSql; struct TYPE_8__* signature; } ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_DISCONNECTED ;
 int TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_MAX_SQL_LEN ;
 int globalCode ;
 int * realloc (int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int strtolower (int *,char const*) ;
 int taos_errstr (int *) ;
 int taos_free_result (TYPE_3__*) ;
 scalar_t__ tsParseSql (TYPE_3__*,int ,int ,int) ;
 int tscError (char*,TYPE_3__*) ;
 int tscTrace (char*,TYPE_3__*,...) ;

int taos_validate_sql(TAOS *taos, const char *sql) {
  STscObj *pObj = (STscObj *)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return TSDB_CODE_DISCONNECTED;
  }

  SSqlObj *pSql = pObj->pSql;
  SSqlRes *pRes = &pSql->res;

  pRes->numOfRows = 1;
  pRes->numOfTotal = 0;

  tscTrace("%p Valid SQL: %s pObj:%p", pSql, sql, pObj);

  int32_t sqlLen = strlen(sql);
  if (sqlLen > TSDB_MAX_SQL_LEN) {
    tscError("%p sql too long", pSql);
    pRes->code = TSDB_CODE_INVALID_SQL;
    return pRes->code;
  }

  pSql->sqlstr = realloc(pSql->sqlstr, sqlLen + 1);
  if (pSql->sqlstr == ((void*)0)) {
    pRes->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
    tscError("%p failed to malloc sql string buffer", pSql);
    tscTrace("%p Valid SQL result:%d, %s pObj:%p", pSql, pRes->code, taos_errstr(taos), pObj);
    return pRes->code;
  }

  strtolower(pSql->sqlstr, sql);

  pRes->code = (uint8_t)tsParseSql(pSql, pObj->acctId, pObj->db, 0);
  int code = pRes->code;

  tscTrace("%p Valid SQL result:%d, %s pObj:%p", pSql, pRes->code, taos_errstr(taos), pObj);
  taos_free_result(pSql);

  return code;
}
