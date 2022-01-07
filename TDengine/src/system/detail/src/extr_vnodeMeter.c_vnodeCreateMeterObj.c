
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ lastCreate; TYPE_1__** meterList; } ;
struct TYPE_9__ {size_t vnode; size_t sid; scalar_t__ uid; scalar_t__ sversion; scalar_t__ timeStamp; int meterId; int state; int * pCache; } ;
typedef TYPE_1__ SMeterObj ;
typedef int SConnSec ;


 int TSDB_CODE_NO_RESOURCE ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_METER_STATE_READY ;
 int TSDB_METER_STATE_UPDATING ;
 int dTrace (char*,size_t,size_t,int ,...) ;
 int dWarn (char*,size_t,size_t,int ) ;
 int * vnodeAllocateCacheInfo (TYPE_1__*) ;
 int vnodeCreateStream (TYPE_1__*) ;
 int vnodeIsMeterState (TYPE_1__*,int ) ;
 TYPE_4__* vnodeList ;
 int vnodeRemoveMeterObj (size_t,size_t) ;
 int vnodeSaveMeterObjToFile (TYPE_1__*) ;
 int vnodeUpdateMeter (TYPE_1__*,int *) ;

int vnodeCreateMeterObj(SMeterObj *pNew, SConnSec *pSec) {
  SMeterObj *pObj;
  int code;

  pObj = vnodeList[pNew->vnode].meterList[pNew->sid];
  code = TSDB_CODE_SUCCESS;

  if (pObj && pObj->uid == pNew->uid) {
    if (pObj->sversion == pNew->sversion) {
      dTrace("vid:%d sid:%d id:%s sversion:%d, identical meterObj, ignore create", pNew->vnode, pNew->sid,
             pNew->meterId, pNew->sversion);
      return -1;
    }

    dTrace("vid:%d sid:%d id:%s, update schema", pNew->vnode, pNew->sid, pNew->meterId);
    if (!vnodeIsMeterState(pObj, TSDB_METER_STATE_UPDATING)) vnodeUpdateMeter(pNew, ((void*)0));
    return TSDB_CODE_SUCCESS;
  }

  if (pObj) {
    dWarn("vid:%d sid:%d id:%s, old meter is there, remove it", pNew->vnode, pNew->sid, pNew->meterId);
    vnodeRemoveMeterObj(pNew->vnode, pNew->sid);
  }

  pNew->pCache = vnodeAllocateCacheInfo(pNew);
  if (pNew->pCache == ((void*)0)) {
    code = TSDB_CODE_NO_RESOURCE;
  } else {
    vnodeList[pNew->vnode].meterList[pNew->sid] = pNew;
    pNew->state = TSDB_METER_STATE_READY;
    if (pNew->timeStamp > vnodeList[pNew->vnode].lastCreate) vnodeList[pNew->vnode].lastCreate = pNew->timeStamp;
    vnodeSaveMeterObjToFile(pNew);

    vnodeCreateStream(pNew);
    dTrace("vid:%d sid:%d id:%s, meterObj is created, uid:%ld", pNew->vnode, pNew->sid, pNew->meterId, pNew->uid);
  }

  return code;
}
