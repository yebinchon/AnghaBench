#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/ * pTSBuf; } ;
struct TYPE_15__ {scalar_t__ rawEKey; TYPE_8__ runtimeEnv; } ;
struct TYPE_12__ {scalar_t__ offset; } ;
struct TYPE_13__ {scalar_t__ numOfFilterCols; scalar_t__ interpoType; scalar_t__ nAggTimeInterval; scalar_t__ skey; scalar_t__ ekey; scalar_t__ lastKey; int /*<<< orphan*/  over; TYPE_1__ limit; } ;
struct TYPE_14__ {int over; int /*<<< orphan*/  dataReady; TYPE_2__ query; } ;
typedef  TYPE_2__ SQuery ;
typedef  TYPE_3__ SQInfo ;
typedef  TYPE_4__ SMeterQuerySupportObj ;

/* Variables and functions */
 int /*<<< orphan*/  QUERY_COMPLETED ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TSDB_INTERPO_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int,int,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(SQInfo *pQInfo, SMeterQuerySupportObj *pSupporter, bool dataInDisk,
                                         bool dataInCache) {
  SQuery *pQuery = &pQInfo->query;

  /* if queried with value filter, do NOT forward query start position */
  if (pQuery->numOfFilterCols > 0 || pSupporter->runtimeEnv.pTSBuf != NULL) {
    return true;
  }

  if (pQuery->limit.offset > 0 && (!FUNC3(pQuery)) && pQuery->interpoType == TSDB_INTERPO_NONE) {
    /*
     * 1. for top/bottom query, the offset applies to the final result, not here
     * 2. for interval without interpolation query we forward pQuery->nAggTimeInterval at a time for
     *    pQuery->limit.offset times. Since hole exists, pQuery->nAggTimeInterval*pQuery->limit.offset value is
     *    not valid. otherwise, we only forward pQuery->limit.offset number of points
     */
    if (pQuery->nAggTimeInterval > 0) {
      while (1) {
        /*
         * the skey may not be the aligned start time
         * 1. it is the value of first existed data point, therefore, the range
         *    between skey and ekey may be less than the interval value.
         * 2. the ekey may not be the actual end value of time interval, in case of the
         */
        if (FUNC0(pQuery)) {
          pQuery->skey = pQuery->ekey + 1;
        } else {
          pQuery->skey = pQuery->ekey - 1;
        }

        // boundary check
        if ((pQuery->skey > pSupporter->rawEKey && FUNC0(pQuery)) ||
            (pQuery->skey < pSupporter->rawEKey && !FUNC0(pQuery))) {
          FUNC6(pQuery, QUERY_COMPLETED);

          FUNC5(&pQInfo->dataReady);
          pQInfo->over = 1;
          return false;
        }

        /*
         * NOTE: the end key must be set the last value, to cover all possible
         * data. Otherwise, it may contain no data with only one interval time range
         */
        pQuery->ekey = pSupporter->rawEKey;
        pQuery->lastKey = pQuery->skey;

        // todo opt performance
        if (FUNC4(dataInDisk, dataInCache, pSupporter, NULL) == false) {
          FUNC5(&pQInfo->dataReady);  // hack for next read for empty return
          pQInfo->over = 1;
          return false;
        }

        if (--pQuery->limit.offset == 0) {
          break;
        }
      }
    } else {
      FUNC2(&pSupporter->runtimeEnv);
      if (FUNC1(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
        FUNC6(pQuery, QUERY_COMPLETED);

        FUNC5(&pQInfo->dataReady);  // hack for next read for empty return;
        pQInfo->over = 1;
        return false;
      }
    }
  }

  return true;
}