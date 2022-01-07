
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int count; } ;
struct TYPE_4__ {scalar_t__ pCachePool; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SCachePool ;



uint64_t vnodeGetPoolCount(SVnodeObj *pVnode) {
  SCachePool *pPool;

  pPool = (SCachePool *)pVnode->pCachePool;

  return pPool->count;
}
