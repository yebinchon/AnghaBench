
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int queryRangeSet; scalar_t__ lastResRows; } ;
struct TYPE_13__ {TYPE_2__* pQuery; } ;
struct TYPE_15__ {int rawEKey; int rawSKey; TYPE_1__ runtimeEnv; } ;
struct TYPE_14__ {scalar_t__ lastKey; scalar_t__ skey; scalar_t__ ekey; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SQueryRuntimeEnv ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SMeterQuerySupportObj ;
typedef TYPE_4__ SMeterQueryInfo ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int assert (int) ;
 int getAlignedIntervalQueryRange (TYPE_2__*,scalar_t__,int ,int ) ;
 int saveIntervalQueryRange (TYPE_1__*,TYPE_4__*) ;
 int saveResult (TYPE_3__*,TYPE_4__*,scalar_t__) ;

void setIntervalQueryRange(SMeterQueryInfo *pMeterQueryInfo, SMeterQuerySupportObj *pSupporter, TSKEY key) {
  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  if (pMeterQueryInfo->queryRangeSet) {
    assert((QUERY_IS_ASC_QUERY(pQuery) && pQuery->lastKey >= pQuery->skey) ||
           (!QUERY_IS_ASC_QUERY(pQuery) && pQuery->lastKey <= pQuery->skey));

    if ((pQuery->ekey < key && QUERY_IS_ASC_QUERY(pQuery)) || (pQuery->ekey > key && !QUERY_IS_ASC_QUERY(pQuery))) {




      getAlignedIntervalQueryRange(pQuery, key, pSupporter->rawSKey, pSupporter->rawEKey);
      saveIntervalQueryRange(pRuntimeEnv, pMeterQueryInfo);


      if (pMeterQueryInfo->lastResRows > 0) {
        saveResult(pSupporter, pMeterQueryInfo, pMeterQueryInfo->lastResRows);
      }
    } else {

    }
  } else {
    pQuery->skey = key;
    assert(pMeterQueryInfo->lastResRows == 0);

    if ((QUERY_IS_ASC_QUERY(pQuery) && (pQuery->ekey < pQuery->skey)) ||
        (!QUERY_IS_ASC_QUERY(pQuery) && (pQuery->skey < pQuery->ekey))) {

      return;
    }

    getAlignedIntervalQueryRange(pQuery, pQuery->skey, pSupporter->rawSKey, pSupporter->rawEKey);
    saveIntervalQueryRange(pRuntimeEnv, pMeterQueryInfo);
    pMeterQueryInfo->queryRangeSet = 1;
  }
}
