
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * cacheBlocks; } ;
struct TYPE_14__ {int vnode; scalar_t__ pCache; } ;
struct TYPE_13__ {scalar_t__ numOfBlocks; } ;
struct TYPE_12__ {TYPE_2__* pQuery; } ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SMeterObj ;
typedef TYPE_4__ SCacheInfo ;


 int cacheBoundaryCheck (TYPE_2__*,TYPE_3__*) ;
 int getBasicCacheInfoSnapshot (TYPE_2__*,TYPE_4__*,int ) ;
 int vnodeFreeFieldsEx (TYPE_1__*) ;

bool hasDataInCache(SQueryRuntimeEnv *pRuntimeEnv, SMeterObj *pMeterObj) {
  SQuery * pQuery = pRuntimeEnv->pQuery;
  SCacheInfo *pCacheInfo = (SCacheInfo *)pMeterObj->pCache;


  if ((pCacheInfo == ((void*)0)) || (pCacheInfo->cacheBlocks == ((void*)0))) {
    return 0;
  }


  vnodeFreeFieldsEx(pRuntimeEnv);
  getBasicCacheInfoSnapshot(pQuery, pCacheInfo, pMeterObj->vnode);
  if (pQuery->numOfBlocks <= 0) {
    return 0;
  }

  return cacheBoundaryCheck(pQuery, pMeterObj);
}
