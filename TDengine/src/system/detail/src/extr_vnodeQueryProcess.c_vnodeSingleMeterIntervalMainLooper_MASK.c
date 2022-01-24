#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_14__ {scalar_t__ offset; } ;
struct TYPE_16__ {scalar_t__ skey; scalar_t__ ekey; scalar_t__ numOfFilterCols; scalar_t__ interpoType; int pointsRead; int pointsToRead; int /*<<< orphan*/  over; TYPE_1__ limit; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pTSBuf; TYPE_3__* pQuery; } ;
typedef  TYPE_2__ SQueryRuntimeEnv ;
typedef  TYPE_3__ SQuery ;
typedef  int /*<<< orphan*/  SMeterQuerySupportObj ;

/* Variables and functions */
 int /*<<< orphan*/  QUERY_COMPLETED ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  QUERY_NOT_COMPLETED ; 
 int /*<<< orphan*/  QUERY_NO_DATA_TO_CHECK ; 
 int /*<<< orphan*/  QUERY_RESBUF_FULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TSDB_INTERPO_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC11(SMeterQuerySupportObj *pSupporter, SQueryRuntimeEnv *pRuntimeEnv) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  while (1) {
    FUNC2((pQuery->skey <= pQuery->ekey && FUNC0(pQuery)) ||
           (pQuery->skey >= pQuery->ekey && !FUNC0(pQuery)));

    FUNC7(pRuntimeEnv);

    FUNC10(pRuntimeEnv);
    if (FUNC8(pQuery)) {
      return;
    }

    FUNC2(!FUNC1(pQuery->over, QUERY_NOT_COMPLETED));

    // clear tag, used to decide if the whole interval query is completed or not
    pQuery->over &= (~QUERY_COMPLETED);
    FUNC3(pRuntimeEnv);

    int64_t maxOutput = FUNC6(pRuntimeEnv);

    // here we can ignore the records in case of no interpolation
    if ((pQuery->numOfFilterCols > 0 || pRuntimeEnv->pTSBuf != NULL) && pQuery->limit.offset > 0 &&
        pQuery->interpoType == TSDB_INTERPO_NONE) { // maxOutput <= 0, means current query does not generate any results
      // todo handle offset, in case of top/bottom interval query
      if (maxOutput > 0) {
        pQuery->limit.offset--;
      }
    } else {
      pQuery->pointsRead += maxOutput;
      FUNC4(pRuntimeEnv, maxOutput);
    }

    if (FUNC1(pQuery->over, QUERY_NO_DATA_TO_CHECK)) {
      break;
    }

    FUNC5(pSupporter, pRuntimeEnv);
    if (FUNC1(pQuery->over, QUERY_COMPLETED)) {
      break;
    }

    /*
     * the scan limitation mechanism is upon here,
     * 1. since there is only one(k) record is generated in one scan operation
     * 2. remain space is not sufficient for next query output, abort
     */
    if ((pQuery->pointsRead % pQuery->pointsToRead == 0 && pQuery->pointsRead != 0) ||
        ((pQuery->pointsRead + maxOutput) > pQuery->pointsToRead)) {
      FUNC9(pQuery, QUERY_RESBUF_FULL);
      break;
    }
  }
}