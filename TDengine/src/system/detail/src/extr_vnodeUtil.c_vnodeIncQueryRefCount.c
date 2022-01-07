
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_15__ {scalar_t__ state; int numOfQueries; int meterId; int sid; int vnode; } ;
struct TYPE_14__ {size_t sid; } ;
struct TYPE_13__ {size_t vnode; size_t numOfSids; } ;
struct TYPE_12__ {TYPE_4__** meterList; } ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SQueryMeterMsg ;
typedef TYPE_3__ SMeterSidExtInfo ;
typedef TYPE_4__ SMeterObj ;


 size_t TSDB_CODE_ACTION_IN_PROGRESS ;
 size_t TSDB_CODE_NOT_ACTIVE_SESSION ;
 size_t TSDB_CODE_SUCCESS ;
 int TSDB_METER_STATE_DELETING ;
 scalar_t__ TSDB_METER_STATE_INSERT ;
 int atomic_fetch_add_32 (int*,int) ;
 int dError (char*,TYPE_2__*,size_t,size_t) ;
 int dTrace (char*,TYPE_2__*,size_t,size_t,size_t,...) ;
 scalar_t__ vnodeIsMeterState (TYPE_4__*,int ) ;
 TYPE_1__* vnodeList ;
 int vnodeSendMeterCfgMsg (size_t,size_t) ;

int32_t vnodeIncQueryRefCount(SQueryMeterMsg* pQueryMsg, SMeterSidExtInfo** pSids, SMeterObj** pMeterObjList,
                              int32_t* numOfInc) {
  SVnodeObj* pVnode = &vnodeList[pQueryMsg->vnode];

  int32_t num = 0;
  int32_t code = TSDB_CODE_SUCCESS;

  for (int32_t i = 0; i < pQueryMsg->numOfSids; ++i) {
    SMeterObj* pMeter = pVnode->meterList[pSids[i]->sid];

    if (pMeter == ((void*)0) || (pMeter->state > TSDB_METER_STATE_INSERT)) {
      if (pMeter == ((void*)0) || vnodeIsMeterState(pMeter, TSDB_METER_STATE_DELETING)) {
        code = TSDB_CODE_NOT_ACTIVE_SESSION;
        dError("qmsg:%p, vid:%d sid:%d, not there or will be dropped", pQueryMsg, pQueryMsg->vnode, pSids[i]->sid);
        vnodeSendMeterCfgMsg(pQueryMsg->vnode, pSids[i]->sid);
      } else {
        code = TSDB_CODE_ACTION_IN_PROGRESS;
        dTrace("qmsg:%p, vid:%d sid:%d id:%s, it is in state:%d, wait!", pQueryMsg, pQueryMsg->vnode, pSids[i]->sid,
               pMeter->meterId, pMeter->state);
      }
    } else {




      pMeterObjList[(*numOfInc)++] = pMeter;
      atomic_fetch_add_32(&pMeter->numOfQueries, 1);


      if (pMeter->numOfQueries > 1) {
        dTrace("qmsg:%p, vid:%d sid:%d id:%s, inc query ref, numOfQueries:%d", pQueryMsg, pMeter->vnode, pMeter->sid,
               pMeter->meterId, pMeter->numOfQueries);
        num++;
      }
    }
  }

  dTrace("qmsg:%p, query meters: %d, inc query ref %d, numOfQueries on %d meters are 1", pQueryMsg,
         pQueryMsg->numOfSids, *numOfInc, (*numOfInc) - num);

  return code;
}
