
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int maxSessions; int precision; } ;
struct TYPE_10__ {TYPE_2__** meterList; TYPE_1__ cfg; } ;
struct TYPE_9__ {scalar_t__ numOfPoints; scalar_t__* offset; } ;
struct TYPE_8__ {TYPE_4__** cacheBlocks; } ;
struct TYPE_7__ {int * pCache; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SVnodeCfg ;
typedef TYPE_2__ SMeterObj ;
typedef TYPE_3__ SCacheInfo ;
typedef TYPE_4__ SCacheBlock ;


 scalar_t__ taosGetTimestamp (int ) ;
 TYPE_5__* vnodeList ;

TSKEY vnodeGetFirstKey(int vnode) {
  SMeterObj * pObj;
  SCacheInfo * pInfo;
  SCacheBlock *pCacheBlock;

  SVnodeCfg *pCfg = &vnodeList[vnode].cfg;
  TSKEY key = taosGetTimestamp(pCfg->precision);

  for (int sid = 0; sid < pCfg->maxSessions; ++sid) {
    pObj = vnodeList[vnode].meterList[sid];
    if (pObj == ((void*)0) || pObj->pCache == ((void*)0)) continue;

    pInfo = (SCacheInfo *)pObj->pCache;
    pCacheBlock = pInfo->cacheBlocks[0];

    if (pCacheBlock == ((void*)0) || pCacheBlock->numOfPoints <= 0) continue;

    if (*((TSKEY *)(pCacheBlock->offset[0])) < key) key = *((TSKEY *)(pCacheBlock->offset[0]));
  }

  return key;
}
