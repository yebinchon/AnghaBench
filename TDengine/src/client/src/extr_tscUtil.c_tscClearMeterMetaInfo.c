
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pMetricMeta; int pMeterMeta; } ;
typedef TYPE_1__ SMeterMetaInfo ;


 int taosRemoveDataFromCache (int ,void**,int) ;
 int tscCacheHandle ;

void tscClearMeterMetaInfo(SMeterMetaInfo* pMeterMetaInfo, bool removeFromCache) {
  if (pMeterMetaInfo == ((void*)0)) {
    return;
  }

  taosRemoveDataFromCache(tscCacheHandle, (void**)&(pMeterMetaInfo->pMeterMeta), removeFromCache);
  taosRemoveDataFromCache(tscCacheHandle, (void**)&(pMeterMetaInfo->pMetricMeta), removeFromCache);
}
