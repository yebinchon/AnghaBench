
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_8__ {scalar_t__ numOfQueries; int meterId; int sid; int vnode; } ;
struct TYPE_7__ {int vmutex; TYPE_2__** meterList; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;


 int TSDB_METER_STATE_DELETED ;
 size_t TSDB_METER_STATE_DELETING ;
 size_t TSDB_METER_STATE_READY ;
 int dWarn (char*,int ,int ,int ,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ vnodeIsMeterState (TYPE_2__*,int ) ;
 int vnodeSetMeterDeleting (TYPE_2__*) ;
 size_t vnodeSetMeterState (TYPE_2__*,size_t) ;

bool vnodeIsSafeToDeleteMeter(SVnodeObj* pVnode, int32_t sid) {
  SMeterObj* pObj = pVnode->meterList[sid];

  if (pObj == ((void*)0) || vnodeIsMeterState(pObj, TSDB_METER_STATE_DELETED)) {
    return 1;
  }

  int32_t prev = vnodeSetMeterState(pObj, TSDB_METER_STATE_DELETING);





  if (prev != TSDB_METER_STATE_READY && prev < TSDB_METER_STATE_DELETING) {
    vnodeSetMeterDeleting(pObj);

    dWarn("vid:%d sid:%d id:%s, can not be deleted, state:%d, wait", pObj->vnode, pObj->sid, pObj->meterId, prev);
    return 0;
  }

  bool ready = 1;





  pthread_mutex_lock(&pVnode->vmutex);
  if (pObj->numOfQueries > 0) {
    dWarn("vid:%d sid:%d id:%s %d queries executing on it, wait query to be finished",
          pObj->vnode, pObj->sid, pObj->meterId, pObj->numOfQueries);
    ready = 0;
  }
  pthread_mutex_unlock(&pVnode->vmutex);

  return ready;
}
