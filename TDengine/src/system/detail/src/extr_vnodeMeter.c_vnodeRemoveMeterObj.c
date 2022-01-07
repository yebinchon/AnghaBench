
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int maxSessions; } ;
struct TYPE_10__ {int lastRemove; TYPE_2__** meterList; TYPE_1__ cfg; } ;
struct TYPE_9__ {int timeStamp; int state; } ;
typedef TYPE_1__ SVnodeCfg ;
typedef TYPE_2__ SMeterObj ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_MAX_VNODES ;
 int TSDB_METER_STATE_DELETED ;
 int dError (char*,int,...) ;
 int taosGetTimestampMs () ;
 int vnodeFreeMeterObj (TYPE_2__*) ;
 int vnodeIsSafeToDeleteMeter (TYPE_5__*,int) ;
 TYPE_5__* vnodeList ;
 int vnodeRemoveStream (TYPE_2__*) ;
 int vnodeSaveMeterObjToFile (TYPE_2__*) ;

int vnodeRemoveMeterObj(int vnode, int sid) {
  SMeterObj *pObj;

  if (vnode < 0 || vnode >= TSDB_MAX_VNODES) {
    dError("vid:%d is out of range", vnode);
    return 0;
  }

  SVnodeCfg *pCfg = &vnodeList[vnode].cfg;
  if (sid < 0 || sid >= pCfg->maxSessions) {
    dError("vid:%d, sid:%d is larger than max:%d or less than 0", vnode, sid, pCfg->maxSessions);
    return 0;
  }


  if (vnodeList[vnode].meterList == ((void*)0)) return 0;

  pObj = vnodeList[vnode].meterList[sid];
  if (pObj == ((void*)0)) {
    return TSDB_CODE_SUCCESS;
  }

  if (!vnodeIsSafeToDeleteMeter(&vnodeList[vnode], sid)) {
    return TSDB_CODE_ACTION_IN_PROGRESS;
  }


  pObj->state = TSDB_METER_STATE_DELETED;
  pObj->timeStamp = taosGetTimestampMs();
  vnodeList[vnode].lastRemove = pObj->timeStamp;

  vnodeRemoveStream(pObj);
  vnodeSaveMeterObjToFile(pObj);
  vnodeFreeMeterObj(pObj);

  return 0;
}
