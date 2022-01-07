
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_18__ {int * payload; int * defaultVal; scalar_t__ allocSize; int command; } ;
struct TYPE_17__ {int * pMeterMeta; int name; } ;
struct TYPE_16__ {int sqlstr; struct TYPE_16__* param; int * fp; TYPE_7__ cmd; int emptyRspSem; int rspSem; struct TYPE_16__* signature; int pTscObj; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SMeterMetaInfo ;
typedef int SMeterMeta ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_DEFAULT_PAYLOAD_SIZE ;
 int TSDB_SQL_META ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int memcpy (int *,int *,int ) ;
 int strcpy (int ,char*) ;
 int strdup (int ) ;
 scalar_t__ taosGetDataFromCache (int ,char*) ;
 TYPE_2__* tscAddEmptyMeterMetaInfo (TYPE_7__*) ;
 int tscAllocPayload (TYPE_7__*,int ) ;
 int tscCacheHandle ;
 int tscError (char*,TYPE_1__*) ;
 int tscFreeSqlObj (TYPE_1__*) ;
 TYPE_2__* tscGetMeterMetaInfo (TYPE_7__*,int ) ;
 int * tscMeterMetaCallBack ;
 int tscProcessSql (TYPE_1__*) ;
 int tscTrace (char*,TYPE_1__*,TYPE_1__*,...) ;
 int tsem_init (int *,int ,int) ;

__attribute__((used)) static int32_t tscDoGetMeterMeta(SSqlObj *pSql, char *meterId, int32_t index) {
  int32_t code = TSDB_CODE_SUCCESS;

  SSqlObj *pNew = calloc(1, sizeof(SSqlObj));
  if (((void*)0) == pNew) {
    tscError("%p malloc failed for new sqlobj to get meter meta", pSql);
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }
  pNew->pTscObj = pSql->pTscObj;
  pNew->signature = pNew;
  pNew->cmd.command = TSDB_SQL_META;
  pNew->cmd.payload = ((void*)0);
  pNew->cmd.allocSize = 0;

  pNew->cmd.defaultVal[0] = pSql->cmd.defaultVal[0];
  if (TSDB_CODE_SUCCESS != tscAllocPayload(&pNew->cmd, TSDB_DEFAULT_PAYLOAD_SIZE)) {
    tscError("%p malloc failed for payload to get meter meta", pSql);
    free(pNew);
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  SMeterMetaInfo *pMeterMetaInfo = tscAddEmptyMeterMetaInfo(&pNew->cmd);

  strcpy(pMeterMetaInfo->name, meterId);
  memcpy(pNew->cmd.payload, pSql->cmd.payload, TSDB_DEFAULT_PAYLOAD_SIZE);
  tscTrace("%p new pSqlObj:%p to get meterMeta", pSql, pNew);

  if (pSql->fp == ((void*)0)) {
    tsem_init(&pNew->rspSem, 0, 0);
    tsem_init(&pNew->emptyRspSem, 0, 1);

    code = tscProcessSql(pNew);
    SMeterMetaInfo *pInfo = tscGetMeterMetaInfo(&pSql->cmd, index);


    if (code == TSDB_CODE_SUCCESS) {
      pInfo->pMeterMeta = (SMeterMeta *)taosGetDataFromCache(tscCacheHandle, meterId);
    }

    tscTrace("%p get meter meta complete, code:%d, pMeterMeta:%p", pSql, code, pInfo->pMeterMeta);
    tscFreeSqlObj(pNew);

  } else {
    pNew->fp = tscMeterMetaCallBack;
    pNew->param = pSql;
    pNew->sqlstr = strdup(pSql->sqlstr);

    code = tscProcessSql(pNew);
    if (code == TSDB_CODE_SUCCESS) {
      code = TSDB_CODE_ACTION_IN_PROGRESS;
    }
  }

  return code;
}
