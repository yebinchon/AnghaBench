
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; int pMetricMeta; scalar_t__ pMeterMeta; } ;
struct TYPE_7__ {int cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SMeterMetaInfo ;
typedef int SMeterMeta ;


 int UTIL_METER_IS_METRIC (TYPE_2__*) ;
 int taosClearDataCache (int ) ;
 int * taosGetDataFromCache (int ,int ) ;
 int taosRemoveDataFromCache (int ,void**,int) ;
 int tscCacheHandle ;
 TYPE_2__* tscGetMeterMetaInfo (int *,int ) ;
 int tscTrace (char*,TYPE_1__*,int ) ;

int tscProcessAlterTableMsgRsp(SSqlObj *pSql) {
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(&pSql->cmd, 0);

  SMeterMeta *pMeterMeta = taosGetDataFromCache(tscCacheHandle, pMeterMetaInfo->name);
  if (pMeterMeta == ((void*)0)) {
    return 0;
  }

  tscTrace("%p force release metermeta in cache after alter-table: %s", pSql, pMeterMetaInfo->name);
  taosRemoveDataFromCache(tscCacheHandle, (void **)&pMeterMeta, 1);

  if (pMeterMetaInfo->pMeterMeta) {
    bool isMetric = UTIL_METER_IS_METRIC(pMeterMetaInfo);

    taosRemoveDataFromCache(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), 1);
    taosRemoveDataFromCache(tscCacheHandle, (void **)&(pMeterMetaInfo->pMetricMeta), 1);

    if (isMetric) {
      tscTrace("%p reset query cache since table:%s is stable", pSql, pMeterMetaInfo->name);
      taosClearDataCache(tscCacheHandle);
    }
  }

  return 0;
}
