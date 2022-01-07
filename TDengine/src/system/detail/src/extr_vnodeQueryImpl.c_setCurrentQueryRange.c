
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pMeterQInfo; TYPE_2__* pMeterObj; } ;
struct TYPE_6__ {int meterId; int sid; int vnode; } ;
struct TYPE_5__ {int lastKey; int ekey; int skey; } ;
typedef int TSKEY ;
typedef int SQuery ;
typedef int SQInfo ;
typedef TYPE_1__ SMeterQueryInfo ;
typedef TYPE_2__ SMeterObj ;
typedef TYPE_3__ SMeterDataInfo ;


 scalar_t__ GET_QINFO_ADDR (int *) ;
 scalar_t__ QUERY_IS_ASC_QUERY (int *) ;
 int qTrace (char*,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool setCurrentQueryRange(SMeterDataInfo *pMeterDataInfo, SQuery *pQuery, TSKEY endKey, TSKEY *minval,
                                 TSKEY *maxval) {
  SQInfo * pQInfo = (SQInfo *)GET_QINFO_ADDR(pQuery);
  SMeterObj * pMeterObj = pMeterDataInfo->pMeterObj;
  SMeterQueryInfo *pMeterQInfo = pMeterDataInfo->pMeterQInfo;

  if (QUERY_IS_ASC_QUERY(pQuery)) {
    *minval = pMeterQInfo->lastKey;
    *maxval = endKey;
  } else {
    *minval = endKey;
    *maxval = pMeterQInfo->lastKey;
  }

  if (*minval > *maxval) {
    qTrace("QInfo:%p vid:%d sid:%d id:%s, no result in files, qrange:%lld-%lld, lastKey:%lld", pQInfo, pMeterObj->vnode,
           pMeterObj->sid, pMeterObj->meterId, pMeterQInfo->skey, pMeterQInfo->ekey, pMeterQInfo->lastKey);
    return 0;
  } else {
    qTrace("QInfo:%p vid:%d sid:%d id:%s, query in files, qrange:%lld-%lld, lastKey:%lld", pQInfo, pMeterObj->vnode,
           pMeterObj->sid, pMeterObj->meterId, pMeterQInfo->skey, pMeterQInfo->ekey, pMeterQInfo->lastKey);
    return 1;
  }
}
