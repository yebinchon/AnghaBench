
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ data; } ;
typedef TYPE_4__ tFilePage ;
typedef scalar_t__ int32_t ;
struct TYPE_21__ {int interpoInfo; TYPE_6__* pQuery; } ;
struct TYPE_24__ {int rawEKey; TYPE_5__ runtimeEnv; } ;
struct TYPE_23__ {TYPE_8__* pMeterQuerySupporter; } ;
struct TYPE_19__ {scalar_t__ offset; } ;
struct TYPE_17__ {int order; } ;
struct TYPE_22__ {int pointsToRead; scalar_t__ numOfOutputCols; TYPE_3__ limit; TYPE_2__* pSelectExpr; int nAggTimeInterval; int precision; int intervalTimeUnit; TYPE_1__ order; } ;
struct TYPE_18__ {int resBytes; } ;
typedef int TSKEY ;
typedef TYPE_5__ SQueryRuntimeEnv ;
typedef TYPE_6__ SQuery ;
typedef TYPE_7__ SQInfo ;
typedef TYPE_8__ SMeterQuerySupportObj ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_6__*) ;
 int assert (int) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ resultInterpolate (TYPE_7__*,TYPE_4__**,TYPE_4__**,scalar_t__,scalar_t__) ;
 scalar_t__ taosGetNumOfResultWithInterpo (int *,int *,scalar_t__,int ,int ,int) ;
 int taosGetRevisedEndKey (int ,int ,int ,int ,int ) ;
 scalar_t__ taosNumOfRemainPoints (int *) ;
 int vnodeHasRemainResults (TYPE_7__*) ;

int32_t vnodeQueryResultInterpolate(SQInfo *pQInfo, tFilePage **pDst, tFilePage **pDataSrc, int32_t numOfRows,
                                    int32_t *numOfInterpo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQueryRuntimeEnv * pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery * pQuery = pRuntimeEnv->pQuery;

  while (1) {
    numOfRows = taosNumOfRemainPoints(&pRuntimeEnv->interpoInfo);

    TSKEY ekey = taosGetRevisedEndKey(pSupporter->rawEKey, pQuery->order.order, pQuery->nAggTimeInterval,
                                      pQuery->intervalTimeUnit, pQuery->precision);
    int32_t numOfFinalRows =
        taosGetNumOfResultWithInterpo(&pRuntimeEnv->interpoInfo, (TSKEY *)pDataSrc[0]->data, numOfRows,
                                      pQuery->nAggTimeInterval, ekey, pQuery->pointsToRead);

    int32_t ret = resultInterpolate(pQInfo, pDst, pDataSrc, numOfRows, numOfFinalRows);
    assert(ret == numOfFinalRows);

    if (pQuery->limit.offset == 0) {

      return ret;
    }

    if (pQuery->limit.offset < ret) {
      ret -= pQuery->limit.offset;


      if (QUERY_IS_ASC_QUERY(pQuery)) {
        for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
          memmove(pDst[i]->data, pDst[i]->data + pQuery->pSelectExpr[i].resBytes * pQuery->limit.offset,
                  ret * pQuery->pSelectExpr[i].resBytes);
        }
      } else {
        for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
          memmove(pDst[i]->data + (pQuery->pointsToRead - ret) * pQuery->pSelectExpr[i].resBytes,
                  pDst[i]->data + (pQuery->pointsToRead - ret - pQuery->limit.offset) * pQuery->pSelectExpr[i].resBytes,
                  ret * pQuery->pSelectExpr[i].resBytes);
        }
      }
      pQuery->limit.offset = 0;
      return ret;
    } else {
      pQuery->limit.offset -= ret;
      ret = 0;
    }

    if (!vnodeHasRemainResults(pQInfo)) {
      return ret;
    }
  }
}
