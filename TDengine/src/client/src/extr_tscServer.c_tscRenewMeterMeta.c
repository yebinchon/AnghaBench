
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int uid; int numOfTags; } ;
struct TYPE_14__ {TYPE_6__* pMeterMeta; int numOfTags; } ;
struct TYPE_13__ {int numOfCols; } ;
struct TYPE_12__ {void* fp; TYPE_2__ cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;
typedef TYPE_3__ SMeterMetaInfo ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int taosRemoveDataFromCache (int ,void**,int) ;
 int tscCacheHandle ;
 int tscDoGetMeterMeta (TYPE_1__*,char*,int ) ;
 TYPE_3__* tscGetMeterMetaInfo (TYPE_2__*,int ) ;
 int tscQueryOnMetric (TYPE_2__*) ;
 int tscTrace (char*,TYPE_1__*,int ,int ,int ,TYPE_6__*) ;
 int tscWaitingForCreateTable (TYPE_2__*) ;

int tscRenewMeterMeta(SSqlObj *pSql, char *meterId) {
  int code = 0;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(&pSql->cmd, 0);


  SSqlCmd *pCmd = &pSql->cmd;


  if (pSql->fp == ((void*)0)) pSql->fp = (void *)0x1;





  if (pMeterMetaInfo->pMeterMeta == ((void*)0) || !tscQueryOnMetric(pCmd)) {
    if (pMeterMetaInfo->pMeterMeta) {
      tscTrace("%p update meter meta, old: numOfTags:%d, numOfCols:%d, uid:%d, addr:%p", pSql,
               pMeterMetaInfo->numOfTags, pCmd->numOfCols, pMeterMetaInfo->pMeterMeta->uid, pMeterMetaInfo->pMeterMeta);
    }
    tscWaitingForCreateTable(&pSql->cmd);
    taosRemoveDataFromCache(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), 1);

    code = tscDoGetMeterMeta(pSql, meterId, 0);
  } else {
    tscTrace("%p metric query not update metric meta, numOfTags:%d, numOfCols:%d, uid:%lld, addr:%p", pSql,
             pMeterMetaInfo->pMeterMeta->numOfTags, pCmd->numOfCols, pMeterMetaInfo->pMeterMeta->uid,
             pMeterMetaInfo->pMeterMeta);
  }

  if (code != TSDB_CODE_ACTION_IN_PROGRESS) {
    if (pSql->fp == (void *)0x1) {
      pSql->fp = ((void*)0);
    }
  }

  return code;
}
