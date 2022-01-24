#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ data; } ;
typedef  TYPE_4__ tFilePage ;
typedef  scalar_t__ int32_t ;
struct TYPE_21__ {int /*<<< orphan*/  interpoInfo; TYPE_6__* pQuery; } ;
struct TYPE_24__ {int /*<<< orphan*/  rawEKey; TYPE_5__ runtimeEnv; } ;
struct TYPE_23__ {TYPE_8__* pMeterQuerySupporter; } ;
struct TYPE_19__ {scalar_t__ offset; } ;
struct TYPE_17__ {int /*<<< orphan*/  order; } ;
struct TYPE_22__ {int pointsToRead; scalar_t__ numOfOutputCols; TYPE_3__ limit; TYPE_2__* pSelectExpr; int /*<<< orphan*/  nAggTimeInterval; int /*<<< orphan*/  precision; int /*<<< orphan*/  intervalTimeUnit; TYPE_1__ order; } ;
struct TYPE_18__ {int resBytes; } ;
typedef  int /*<<< orphan*/  TSKEY ;
typedef  TYPE_5__ SQueryRuntimeEnv ;
typedef  TYPE_6__ SQuery ;
typedef  TYPE_7__ SQInfo ;
typedef  TYPE_8__ SMeterQuerySupportObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_7__*,TYPE_4__**,TYPE_4__**,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 

int32_t FUNC8(SQInfo *pQInfo, tFilePage **pDst, tFilePage **pDataSrc, int32_t numOfRows,
                                    int32_t *numOfInterpo) {
  SMeterQuerySupportObj *pSupporter = pQInfo->pMeterQuerySupporter;
  SQueryRuntimeEnv *     pRuntimeEnv = &pSupporter->runtimeEnv;
  SQuery *               pQuery = pRuntimeEnv->pQuery;

  while (1) {
    numOfRows = FUNC6(&pRuntimeEnv->interpoInfo);

    TSKEY ekey = FUNC5(pSupporter->rawEKey, pQuery->order.order, pQuery->nAggTimeInterval,
                                      pQuery->intervalTimeUnit, pQuery->precision);
    int32_t numOfFinalRows =
        FUNC4(&pRuntimeEnv->interpoInfo, (TSKEY *)pDataSrc[0]->data, numOfRows,
                                      pQuery->nAggTimeInterval, ekey, pQuery->pointsToRead);

    int32_t ret = FUNC3(pQInfo, pDst, pDataSrc, numOfRows, numOfFinalRows);
    FUNC1(ret == numOfFinalRows);

    if (pQuery->limit.offset == 0) {
      /* reached the start position of according to offset value, return immediately */
      return ret;
    }

    if (pQuery->limit.offset < ret) {
      ret -= pQuery->limit.offset;
      // todo !!!!there exactly number of interpo is not valid.
      // todo refactor move to the beginning of buffer
      if (FUNC0(pQuery)) {
        for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
          FUNC2(pDst[i]->data, pDst[i]->data + pQuery->pSelectExpr[i].resBytes * pQuery->limit.offset,
                  ret * pQuery->pSelectExpr[i].resBytes);
        }
      } else {
        for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
          FUNC2(pDst[i]->data + (pQuery->pointsToRead - ret) * pQuery->pSelectExpr[i].resBytes,
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

    if (!FUNC7(pQInfo)) {
      return ret;
    }
  }
}