
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * pMeterMeta; } ;
struct TYPE_13__ {scalar_t__ command; int type; } ;
struct TYPE_11__ {scalar_t__ qhandle; scalar_t__ code; scalar_t__ numOfRows; } ;
struct TYPE_12__ {int freed; int * fp; int * thandle; int * pStream; struct TYPE_12__* signature; TYPE_3__ cmd; TYPE_1__ res; } ;
typedef int TAOS_RES ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SMeterMetaInfo ;


 scalar_t__ TSDB_CODE_QUERY_CANCELLED ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_QUERY_TYPE_FREE_RESOURCE ;
 scalar_t__ TSDB_SQL_FETCH ;
 scalar_t__ TSDB_SQL_LOCAL ;
 scalar_t__ TSDB_SQL_MGMT ;
 scalar_t__ TSDB_SQL_RETRIEVE ;
 scalar_t__ TSDB_SQL_SELECT ;
 int assert (int) ;
 int tscFreeSqlObj (TYPE_2__*) ;
 int tscFreeSqlObjPartial (TYPE_2__*) ;
 TYPE_4__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;
 int tscProcessSql (TYPE_2__*) ;
 int tscTrace (char*,TYPE_2__*,...) ;

void taos_free_result(TAOS_RES *res) {
  if (res == ((void*)0)) return;

  SSqlObj *pSql = (SSqlObj *)res;
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  tscTrace("%p start to free result", pSql);

  if (pSql->signature != pSql) return;

  if (pRes == ((void*)0) || pRes->qhandle == 0) {

    tscTrace("%p qhandle is null, abort free, fp:%p", pSql, pSql->fp);
    if (pSql->fp != ((void*)0)) {
      pSql->thandle = ((void*)0);
      tscFreeSqlObj(pSql);
      tscTrace("%p Async SqlObj is freed by app", pSql);
    } else {
      tscFreeSqlObjPartial(pSql);
    }
    return;
  }


  pCmd->type = TSDB_QUERY_TYPE_FREE_RESOURCE;

  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);
  if (pRes->code != TSDB_CODE_QUERY_CANCELLED &&
      ((pRes->numOfRows > 0 && pCmd->command < TSDB_SQL_LOCAL) ||
       (pRes->code == TSDB_CODE_SUCCESS && pRes->numOfRows == 0 && pCmd->command == TSDB_SQL_SELECT &&
        pSql->pStream == ((void*)0) && pMeterMetaInfo->pMeterMeta != ((void*)0)))) {
    pCmd->command = (pCmd->command > TSDB_SQL_MGMT) ? TSDB_SQL_RETRIEVE : TSDB_SQL_FETCH;

    void *fp = pSql->fp;
    if (fp != ((void*)0)) {
      pSql->freed = 1;
    }

    tscProcessSql(pSql);





    if (fp == ((void*)0)) {
      pSql->thandle = ((void*)0);
      tscFreeSqlObjPartial(pSql);
      tscTrace("%p sql result is freed by app", pSql);
    }
  } else {

    pSql->thandle = ((void*)0);

    if (pSql->fp) {
      assert(pRes->numOfRows == 0 || (pCmd->command > TSDB_SQL_LOCAL));
      tscFreeSqlObj(pSql);
      tscTrace("%p Async sql result is freed by app", pSql);
    } else {
      tscFreeSqlObjPartial(pSql);
      tscTrace("%p sql result is freed", pSql);
    }
  }
}
