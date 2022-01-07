
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {scalar_t__ rawEKey; int rawSKey; } ;
struct TYPE_11__ {int order; } ;
struct TYPE_13__ {scalar_t__ ekey; int nAggTimeInterval; scalar_t__ skey; scalar_t__ lastKey; int over; TYPE_1__ order; } ;
struct TYPE_12__ {int nextPos; TYPE_3__* pQuery; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SMeterQuerySupportObj ;


 int GET_FORWARD_DIRECTION_FACTOR (int ) ;
 int QUERY_COMPLETED ;
 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_3__*) ;
 int QUERY_NO_DATA_TO_CHECK ;
 scalar_t__ Q_STATUS_EQUAL (int ,int ) ;
 int getAlignedIntervalQueryRange (TYPE_3__*,scalar_t__,int ,scalar_t__) ;
 scalar_t__ loadRequiredBlockIntoMem (TYPE_2__*,int *) ;
 int setQueryStatus (TYPE_3__*,int ) ;

void forwardIntervalQueryRange(SMeterQuerySupportObj *pSupporter, SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  int32_t factor = GET_FORWARD_DIRECTION_FACTOR(pQuery->order.order);
  pQuery->ekey += (pQuery->nAggTimeInterval * factor);
  pQuery->skey = pQuery->ekey - (pQuery->nAggTimeInterval - 1) * factor;


  if (QUERY_IS_ASC_QUERY(pQuery)) {
    if (pQuery->skey > pSupporter->rawEKey) {
      setQueryStatus(pQuery, QUERY_COMPLETED);
      return;
    }

    if (pQuery->ekey > pSupporter->rawEKey) {
      pQuery->ekey = pSupporter->rawEKey;
    }
  } else {
    if (pQuery->skey < pSupporter->rawEKey) {
      setQueryStatus(pQuery, QUERY_COMPLETED);
      return;
    }

    if (pQuery->ekey < pSupporter->rawEKey) {
      pQuery->ekey = pSupporter->rawEKey;
    }
  }


  pQuery->lastKey = pQuery->skey;

  TSKEY nextTimestamp = loadRequiredBlockIntoMem(pRuntimeEnv, &pRuntimeEnv->nextPos);
  if ((nextTimestamp > pSupporter->rawEKey && QUERY_IS_ASC_QUERY(pQuery)) ||
      (nextTimestamp < pSupporter->rawEKey && !QUERY_IS_ASC_QUERY(pQuery)) ||
      Q_STATUS_EQUAL(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
    setQueryStatus(pQuery, QUERY_COMPLETED);
    return;
  }


  if ((nextTimestamp > pQuery->ekey && QUERY_IS_ASC_QUERY(pQuery)) ||
      (nextTimestamp < pQuery->ekey && !QUERY_IS_ASC_QUERY(pQuery))) {
    getAlignedIntervalQueryRange(pQuery, nextTimestamp, pSupporter->rawSKey, pSupporter->rawEKey);
  }
}
