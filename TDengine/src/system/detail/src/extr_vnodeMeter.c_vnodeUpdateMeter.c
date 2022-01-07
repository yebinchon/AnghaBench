
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_15__ {size_t vnode; size_t sid; scalar_t__ numOfQueries; scalar_t__ timeStamp; int state; int meterId; int sversion; int pCache; struct TYPE_15__* schema; int maxBytes; int bytesPerPoint; int numOfColumns; } ;
struct TYPE_14__ {scalar_t__ lastCreate; int vmutex; TYPE_2__** meterList; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SMeterObj ;


 scalar_t__ TSDB_METER_STATE_DELETING ;
 scalar_t__ TSDB_METER_STATE_READY ;
 int TSDB_METER_STATE_UPDATING ;
 int dError (char*,size_t,size_t,int ,...) ;
 int dTrace (char*,size_t,size_t,int ,...) ;
 int free (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strcpy (int ,int ) ;
 int * taosTmrStart (void (*) (void*,void*),int,TYPE_2__*,int ) ;
 int tfree (TYPE_2__*) ;
 int vnodeAllocateCacheInfo (TYPE_2__*) ;
 int vnodeClearMeterState (TYPE_2__*,int ) ;
 int vnodeFreeCacheInfo (TYPE_2__*) ;
 int vnodeIsCacheCommitted (TYPE_2__*) ;
 scalar_t__ vnodeIsMeterState (TYPE_2__*,scalar_t__) ;
 TYPE_1__* vnodeList ;
 void vnodeProcessUpdateSchemaTimer (void*,void*) ;
 int vnodeSaveMeterObjToFile (TYPE_2__*) ;
 scalar_t__ vnodeSetMeterState (TYPE_2__*,int ) ;
 int vnodeTmrCtrl ;

void vnodeUpdateMeter(void *param, void *tmrId) {
  SMeterObj *pNew = (SMeterObj *)param;
  if (pNew == ((void*)0) || pNew->vnode < 0 || pNew->sid < 0) return;

  SVnodeObj* pVnode = &vnodeList[pNew->vnode];

  if (pVnode->meterList == ((void*)0)) {
    dTrace("vid:%d sid:%d id:%s, vnode is deleted, abort update schema", pNew->vnode, pNew->sid, pNew->meterId);
    free(pNew->schema);
    free(pNew);
    return;
  }

  SMeterObj *pObj = pVnode->meterList[pNew->sid];
  if (pObj == ((void*)0) || vnodeIsMeterState(pObj, TSDB_METER_STATE_DELETING)) {
    dTrace("vid:%d sid:%d id:%s, meter is deleted, abort update schema", pNew->vnode, pNew->sid, pNew->meterId);
    free(pNew->schema);
    free(pNew);
    return;
  }

  int32_t state = vnodeSetMeterState(pObj, TSDB_METER_STATE_UPDATING);
  if (state >= TSDB_METER_STATE_DELETING) {
    dError("vid:%d sid:%d id:%s, meter is deleted, failed to update, state:%d",
           pObj->vnode, pObj->sid, pObj->meterId, state);
    return;
  }

  int32_t num = 0;
  pthread_mutex_lock(&pVnode->vmutex);
  num = pObj->numOfQueries;
  pthread_mutex_unlock(&pVnode->vmutex);

  if (num > 0 || state != TSDB_METER_STATE_READY) {

    vnodeClearMeterState(pObj, TSDB_METER_STATE_UPDATING);
    dTrace("vid:%d sid:%d id:%s, update failed, retry later, numOfQueries:%d, state:%d",
           pNew->vnode, pNew->sid, pNew->meterId, num, state);


    if (taosTmrStart(vnodeUpdateMeter, 50, pNew, vnodeTmrCtrl) == ((void*)0)) {
      dError("vid:%d sid:%d id:%s, failed to start update timer, no retry", pNew->vnode, pNew->sid, pNew->meterId);
      free(pNew->schema);
      free(pNew);
    }
    return;
  }


  if (!vnodeIsCacheCommitted(pObj)) {

    if (taosTmrStart(vnodeProcessUpdateSchemaTimer, 0, pObj, vnodeTmrCtrl) == ((void*)0)) {
      dError("vid:%d sid:%d id:%s, failed to start commit timer", pObj->vnode, pObj->sid, pObj->meterId);
      vnodeClearMeterState(pObj, TSDB_METER_STATE_UPDATING);
      free(pNew->schema);
      free(pNew);
      return;
    }

    if (taosTmrStart(vnodeUpdateMeter, 50, pNew, vnodeTmrCtrl) == ((void*)0)) {
      dError("vid:%d sid:%d id:%s, failed to start update timer", pNew->vnode, pNew->sid, pNew->meterId);
      vnodeClearMeterState(pObj, TSDB_METER_STATE_UPDATING);
      free(pNew->schema);
      free(pNew);
    }

    dTrace("vid:%d sid:%d meterId:%s, there are data in cache, commit first, update later",
           pNew->vnode, pNew->sid, pNew->meterId);
    vnodeClearMeterState(pObj, TSDB_METER_STATE_UPDATING);
    return;
  }

  strcpy(pObj->meterId, pNew->meterId);
  pObj->numOfColumns = pNew->numOfColumns;
  pObj->timeStamp = pNew->timeStamp;
  pObj->bytesPerPoint = pNew->bytesPerPoint;
  pObj->maxBytes = pNew->maxBytes;
  if (pObj->timeStamp > vnodeList[pObj->vnode].lastCreate) vnodeList[pObj->vnode].lastCreate = pObj->timeStamp;

  tfree(pObj->schema);
  pObj->schema = pNew->schema;

  vnodeFreeCacheInfo(pObj);
  pObj->pCache = vnodeAllocateCacheInfo(pObj);

  pObj->sversion = pNew->sversion;
  vnodeSaveMeterObjToFile(pObj);
  vnodeClearMeterState(pObj, TSDB_METER_STATE_UPDATING);

  dTrace("vid:%d sid:%d id:%s, schema is updated, state:%d", pObj->vnode, pObj->sid, pObj->meterId, pObj->state);
  free(pNew);
}
