
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_13__ {int numOfRows; scalar_t__ code; scalar_t__ qhandle; scalar_t__ numOfTotal; } ;
struct TYPE_14__ {int * thandle; int sqlstr; TYPE_2__ res; } ;
struct TYPE_12__ {int db; int acctId; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlRes ;
typedef TYPE_3__ SSqlObj ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int taos_errstr (TYPE_1__*) ;
 scalar_t__ tsParseSql (TYPE_3__*,int ,int ,int) ;
 int tscDoQuery (TYPE_3__*) ;
 int tscFreeSqlObjPartial (TYPE_3__*) ;
 int tscTrace (char*,TYPE_3__*,int,TYPE_1__*,...) ;

int taos_query_imp(STscObj* pObj, SSqlObj* pSql) {
  SSqlRes *pRes = &pSql->res;

  pRes->numOfRows = 1;
  pRes->numOfTotal = 0;
  tscTrace("%p SQL: %s pObj:%p", pSql, pSql->sqlstr, pObj);

  pRes->code = (uint8_t)tsParseSql(pSql, pObj->acctId, pObj->db, 0);






  pRes->qhandle = 0;
  pSql->thandle = ((void*)0);

  if (pRes->code != TSDB_CODE_SUCCESS) return pRes->code;

  tscDoQuery(pSql);

  tscTrace("%p SQL result:%d, %s pObj:%p", pSql, pRes->code, taos_errstr(pObj), pObj);
  if (pRes->code != TSDB_CODE_SUCCESS) {
    tscFreeSqlObjPartial(pSql);
  }

  return pRes->code;
}
