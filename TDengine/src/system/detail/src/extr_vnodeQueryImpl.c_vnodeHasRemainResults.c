
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_13__ {TYPE_4__** pInterpoBuf; int interpoInfo; TYPE_6__* pQuery; } ;
struct TYPE_16__ {int rawEKey; TYPE_5__ runtimeEnv; } ;
struct TYPE_9__ {scalar_t__ interpoType; } ;
struct TYPE_15__ {scalar_t__ pointsRead; TYPE_1__ query; TYPE_8__* pMeterQuerySupporter; } ;
struct TYPE_11__ {int order; } ;
struct TYPE_10__ {scalar_t__ limit; } ;
struct TYPE_14__ {int pointsToRead; int nAggTimeInterval; int precision; int intervalTimeUnit; TYPE_3__ order; int over; TYPE_2__ limit; } ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef int TSKEY ;
typedef TYPE_5__ SQueryRuntimeEnv ;
typedef TYPE_6__ SQuery ;
typedef TYPE_7__ SQInfo ;
typedef TYPE_8__ SMeterQuerySupportObj ;
typedef int SInterpolationInfo ;


 int QUERY_COMPLETED ;
 int QUERY_NO_DATA_TO_CHECK ;
 scalar_t__ Q_STATUS_EQUAL (int ,int) ;
 scalar_t__ TSDB_INTERPO_NONE ;
 scalar_t__ taosGetNumOfResultWithInterpo (int *,int *,scalar_t__,int ,int ,int ) ;
 int taosGetRevisedEndKey (int ,int ,int ,int ,int ) ;
 scalar_t__ taosNumOfRemainPoints (int *) ;

bool vnodeHasRemainResults(void *handle) {
  SQInfo * pQInfo = (SQInfo *)handle;
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;

  if (pSupporter == ((void*)0) || pQInfo->query.interpoType == TSDB_INTERPO_NONE) {
    return 0;
  }

  SQueryRuntimeEnv *pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  SInterpolationInfo *pInterpoInfo = &pRuntimeEnv->interpoInfo;

  if (pQuery->limit.limit > 0 && pQInfo->pointsRead >= pQuery->limit.limit) {
    return 0;
  }

  int32_t remain = taosNumOfRemainPoints(pInterpoInfo);
  if (remain > 0) {
    return 1;
  } else {
    if (pRuntimeEnv->pInterpoBuf == ((void*)0)) {
      return 0;
    }


    if (Q_STATUS_EQUAL(pQuery->over, QUERY_COMPLETED | QUERY_NO_DATA_TO_CHECK)) {
      TSKEY ekey = taosGetRevisedEndKey(pSupporter->rawEKey, pQuery->order.order, pQuery->nAggTimeInterval,
                                        pQuery->intervalTimeUnit, pQuery->precision);
      int32_t numOfTotal = taosGetNumOfResultWithInterpo(pInterpoInfo, (TSKEY *)pRuntimeEnv->pInterpoBuf[0]->data,
                                                         remain, pQuery->nAggTimeInterval, ekey, pQuery->pointsToRead);
      return numOfTotal > 0;
    }

    return 0;
  }
}
