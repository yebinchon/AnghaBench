
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ const int32_t ;
struct TYPE_10__ {int code; scalar_t__ qhandle; scalar_t__ numOfTotal; } ;
struct TYPE_11__ {int * thandle; int * fp; TYPE_2__ res; } ;
struct TYPE_9__ {TYPE_3__* pSql; struct TYPE_9__* signature; } ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;


 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_DISCONNECTED ;
 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 int assert (int ) ;
 char* calloc (int,scalar_t__ const) ;
 int free (char*) ;
 int globalCode ;
 scalar_t__ strlen (char const*) ;
 int strtolower (char*,char const*) ;
 int taos_errstr (int *) ;
 int tscDoQuery (TYPE_3__*) ;
 int tscError (char*,TYPE_3__*,...) ;
 int tscFreeSqlObjPartial (TYPE_3__*) ;
 scalar_t__ tscParseTblNameList (TYPE_3__*,char*,scalar_t__ const) ;
 int tscTrace (char*,TYPE_3__*,...) ;

int taos_load_table_info(TAOS *taos, const char *tableNameList) {
  const int32_t MAX_TABLE_NAME_LENGTH = 12*1024*1024;

  STscObj *pObj = (STscObj *)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return TSDB_CODE_DISCONNECTED;
  }

  SSqlObj *pSql = pObj->pSql;
  SSqlRes *pRes = &pSql->res;

  pRes->numOfTotal = 0;
  pRes->code = 0;

  assert(pSql->fp == ((void*)0));
  tscTrace("%p tableNameList: %s pObj:%p", pSql, tableNameList, pObj);

  int32_t tblListLen = strlen(tableNameList);
  if (tblListLen > MAX_TABLE_NAME_LENGTH) {
    tscError("%p tableNameList too long, length:%d, maximum allowed:%d", pSql, tblListLen, MAX_TABLE_NAME_LENGTH);
    pRes->code = TSDB_CODE_INVALID_SQL;
    return pRes->code;
  }

  char* str = calloc(1, tblListLen + 1);
  if (str == ((void*)0)) {
    pRes->code = TSDB_CODE_CLI_OUT_OF_MEMORY;
    tscError("%p failed to malloc sql string buffer", pSql);
    return pRes->code;
  }

  strtolower(str, tableNameList);
  pRes->code = (uint8_t) tscParseTblNameList(pSql, str, tblListLen);






  pRes->qhandle = 0;
  pSql->thandle = ((void*)0);
  free(str);

  if (pRes->code != TSDB_CODE_SUCCESS) {
    return pRes->code;
  }

  tscDoQuery(pSql);

  tscTrace("%p load multi metermeta result:%d %s pObj:%p", pSql, pRes->code, taos_errstr(taos), pObj);
  if (pRes->code != TSDB_CODE_SUCCESS) {
    tscFreeSqlObjPartial(pSql);
  }

  return pRes->code;
}
