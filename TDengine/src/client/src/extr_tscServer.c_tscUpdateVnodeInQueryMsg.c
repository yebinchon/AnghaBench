
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* vpeerDesc; } ;
struct TYPE_20__ {int * pMetricMeta; TYPE_8__* pMeterMeta; } ;
struct TYPE_19__ {void* vnode; } ;
struct TYPE_18__ {int vnodeIdx; } ;
struct TYPE_17__ {size_t index; TYPE_5__ cmd; } ;
struct TYPE_16__ {TYPE_2__* vpeerDesc; } ;
struct TYPE_15__ {int vnode; } ;
struct TYPE_14__ {int vnode; } ;
typedef TYPE_3__ SVnodeSidList ;
typedef TYPE_4__ SSqlObj ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SQueryMeterMsg ;
typedef int SMetricMeta ;
typedef TYPE_7__ SMeterMetaInfo ;
typedef TYPE_8__ SMeterMeta ;


 scalar_t__ UTIL_METER_IS_NOMRAL_METER (TYPE_7__*) ;
 void* htons (int ) ;
 int tsRpcHeadSize ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 TYPE_3__* tscGetVnodeSidList (int *,int ) ;

void tscUpdateVnodeInQueryMsg(SSqlObj *pSql, char *buf) {
  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  char * pStart = buf + tsRpcHeadSize;
  SQueryMeterMsg *pQueryMsg = (SQueryMeterMsg *)pStart;

  if (UTIL_METER_IS_NOMRAL_METER(pMeterMetaInfo)) {
    SMeterMeta *pMeterMeta = pMeterMetaInfo->pMeterMeta;
    pQueryMsg->vnode = htons(pMeterMeta->vpeerDesc[pSql->index].vnode);
  } else {
    SMetricMeta * pMetricMeta = pMeterMetaInfo->pMetricMeta;
    SVnodeSidList *pVnodeSidList = tscGetVnodeSidList(pMetricMeta, pCmd->vnodeIdx);
    pQueryMsg->vnode = htons(pVnodeSidList->vpeerDesc[pSql->index].vnode);
  }
}
