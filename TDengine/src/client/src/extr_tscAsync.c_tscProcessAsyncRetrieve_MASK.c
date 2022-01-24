#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* pMetricMeta; } ;
struct TYPE_16__ {scalar_t__ limit; } ;
struct TYPE_20__ {int vnodeIdx; scalar_t__ globalLimit; int numOfCols; int /*<<< orphan*/  order; int /*<<< orphan*/  command; TYPE_1__ limit; } ;
struct TYPE_18__ {scalar_t__ numOfTotal; int* bytes; int row; scalar_t__* tsrow; } ;
struct TYPE_19__ {TYPE_3__ res; int /*<<< orphan*/  param; int /*<<< orphan*/  (* fetchFp ) (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__*) ;int /*<<< orphan*/  fp; TYPE_5__ cmd; } ;
struct TYPE_17__ {int numOfVnodes; } ;
typedef  int /*<<< orphan*/  TAOS_RES ;
typedef  TYPE_3__ SSqlRes ;
typedef  TYPE_4__ SSqlObj ;
typedef  TYPE_5__ SSqlCmd ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSDB_SQL_SELECT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__*) ; 
 TYPE_9__* FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tscProcessAsyncContinueRetrieve ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void FUNC9(void *param, TAOS_RES *tres, int numOfRows) {
  SSqlObj *pSql = (SSqlObj *)tres;
  SSqlRes *pRes = &pSql->res;
  SSqlCmd *pCmd = &pSql->cmd;

  if (numOfRows == 0) {
    // sequentially retrieve data from remain vnodes.
    if (FUNC7(pCmd)) {
      /*
       * vnode is denoted by vnodeIdx, continue to query vnode specified by vnodeIdx till all vnode have been retrieved
       */
      FUNC1(pCmd->vnodeIdx >= 1);

      /* reach the maximum number of output rows, abort */
      if (pCmd->globalLimit > 0 && pRes->numOfTotal >= pCmd->globalLimit) {
        (*pSql->fetchFp)(pSql->param, pSql, NULL);
        return;
      }

      /* update the limit value according to current retrieval results */
      pCmd->limit.limit = pCmd->globalLimit - pRes->numOfTotal;

      if ((++pCmd->vnodeIdx) <= FUNC5(pCmd, 0)->pMetricMeta->numOfVnodes) {
        pSql->cmd.command = TSDB_SQL_SELECT;  // reset flag to launch query first.

        FUNC8(pRes);
        pSql->fp = tscProcessAsyncContinueRetrieve;
        FUNC6(pSql);
        return;
      }
    } else {
      (*pSql->fetchFp)(pSql->param, pSql, NULL);
    }
  } else {
    for (int i = 0; i < pCmd->numOfCols; ++i)
      pRes->tsrow[i] = FUNC0(pRes, pCmd, i, pCmd->order) + pRes->bytes[i] * pRes->row;
    pRes->row++;

    (*pSql->fetchFp)(pSql->param, pSql, pSql->res.tsrow);
  }
}