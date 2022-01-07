
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pMetricMeta; scalar_t__ pMeterMeta; int name; } ;
struct TYPE_6__ {int cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SMeterMetaInfo ;
typedef int SMeterMeta ;


 int * taosGetDataFromCache (int ,int ) ;
 int taosRemoveDataFromCache (int ,void**,int) ;
 int tscCacheHandle ;
 TYPE_2__* tscGetMeterMetaInfo (int *,int ) ;
 int tscTrace (char*,TYPE_1__*,int ) ;

int tscProcessDropTableRsp(SSqlObj *pSql) {
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(&pSql->cmd, 0);

  SMeterMeta *pMeterMeta = taosGetDataFromCache(tscCacheHandle, pMeterMetaInfo->name);
  if (pMeterMeta == ((void*)0)) {

    return 0;
  }
  tscTrace("%p force release metermeta after drop table:%s", pSql, pMeterMetaInfo->name);
  taosRemoveDataFromCache(tscCacheHandle, (void **)&pMeterMeta, 1);

  if (pMeterMetaInfo->pMeterMeta) {
    taosRemoveDataFromCache(tscCacheHandle, (void **)&(pMeterMetaInfo->pMeterMeta), 1);
    taosRemoveDataFromCache(tscCacheHandle, (void **)&(pMeterMetaInfo->pMetricMeta), 1);
  }

  return 0;
}
