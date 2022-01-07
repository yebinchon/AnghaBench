
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int commitInProcess; int vmutex; } ;
struct TYPE_9__ {int vnode; int sid; int meterId; } ;
struct TYPE_8__ {scalar_t__ pCachePool; int * meterList; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;
typedef TYPE_3__ SCachePool ;


 int TSDB_METER_STATE_UPDATING ;
 int dTrace (char*,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * taosTmrStart (void (*) (void*,void*),int,TYPE_2__*,int ) ;
 int vnodeClearMeterState (TYPE_2__*,int ) ;
 int vnodeCommitMultiToFile (TYPE_1__*,int ,int ) ;
 TYPE_1__* vnodeList ;
 int vnodeTmrCtrl ;

void vnodeProcessUpdateSchemaTimer(void *param, void *tmrId) {
  SMeterObj * pObj = (SMeterObj *)param;
  SVnodeObj * pVnode = vnodeList + pObj->vnode;






  if (pVnode->meterList == ((void*)0)) {
    dTrace("vnode is deleted, abort update schema");
    return;
  }

  SCachePool *pPool = (SCachePool *)pVnode->pCachePool;

  pthread_mutex_lock(&pPool->vmutex);
  if (pPool->commitInProcess) {
    dTrace("vid:%d sid:%d mid:%s, committing in process, commit later", pObj->vnode, pObj->sid, pObj->meterId);
    if (taosTmrStart(vnodeProcessUpdateSchemaTimer, 10, pObj, vnodeTmrCtrl) == ((void*)0)) {
      vnodeClearMeterState(pObj, TSDB_METER_STATE_UPDATING);
    }

    pthread_mutex_unlock(&pPool->vmutex);
    return;
  }

  pPool->commitInProcess = 1;
  pthread_mutex_unlock(&pPool->vmutex);

  vnodeCommitMultiToFile(pVnode, pObj->sid, pObj->sid);
}
