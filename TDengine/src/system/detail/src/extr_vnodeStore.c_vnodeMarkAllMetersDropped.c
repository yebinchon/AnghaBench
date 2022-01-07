
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int state; } ;
struct TYPE_6__ {scalar_t__ maxSessions; } ;
struct TYPE_7__ {TYPE_3__** meterList; TYPE_1__ cfg; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SMeterObj ;


 int TSDB_CODE_ACTION_IN_PROGRESS ;
 int TSDB_CODE_SUCCESS ;
 int TSDB_METER_STATE_DELETED ;
 int assert (int) ;
 int vnodeIsSafeToDeleteMeter (TYPE_2__*,int) ;

__attribute__((used)) static int32_t vnodeMarkAllMetersDropped(SVnodeObj* pVnode) {
  if (pVnode->meterList == ((void*)0)) {
    assert(pVnode->cfg.maxSessions == 0);
    return TSDB_CODE_SUCCESS;
  }

  bool ready = 1;
  for (int sid = 0; sid < pVnode->cfg.maxSessions; ++sid) {
    if (!vnodeIsSafeToDeleteMeter(pVnode, sid)) {
      ready = 0;
    } else {
      SMeterObj* pObj = pVnode->meterList[sid];
      if (pObj != ((void*)0)) {
        pObj->state = TSDB_METER_STATE_DELETED;
      }
    }
  }

  return ready? TSDB_CODE_SUCCESS:TSDB_CODE_ACTION_IN_PROGRESS;
}
