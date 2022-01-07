
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int numOfTags; int numOfColumns; } ;
struct TYPE_9__ {TYPE_3__* pMeterMeta; } ;
struct TYPE_8__ {int * pStream; int * fp; int cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef int SSqlCmd ;
typedef TYPE_2__ SMeterMetaInfo ;
typedef TYPE_3__ SMeterMeta ;


 int TSDB_CODE_SUCCESS ;
 scalar_t__ taosGetDataFromCache (int ,char*) ;
 int taosRemoveDataFromCache (int ,void**,int) ;
 int tscCacheHandle ;
 int tscDoGetMeterMeta (TYPE_1__*,char*,int ) ;
 int tscFreeSqlCmdData (int *) ;
 TYPE_2__* tscGetMeterMetaInfo (int *,int ) ;
 int tscTrace (char*,TYPE_1__*,int ,int ) ;

int tscGetMeterMeta(SSqlObj *pSql, char *meterId, int32_t index) {
  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, index);


  taosRemoveDataFromCache(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), 0);
  pMeterMetaInfo->pMeterMeta = (SMeterMeta *)taosGetDataFromCache(tscCacheHandle, meterId);

  if (pMeterMetaInfo->pMeterMeta != ((void*)0)) {
    SMeterMeta *pMeterMeta = pMeterMetaInfo->pMeterMeta;

    tscTrace("%p retrieve meterMeta from cache, the number of columns:%d, numOfTags:%d", pSql, pMeterMeta->numOfColumns,
             pMeterMeta->numOfTags);

    return TSDB_CODE_SUCCESS;
  }





  if (pSql->fp != ((void*)0) && pSql->pStream == ((void*)0)) {
    tscFreeSqlCmdData(pCmd);
  }

  return tscDoGetMeterMeta(pSql, meterId, index);
}
