#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ nSQLOptr; struct TYPE_16__* pRight; int /*<<< orphan*/  colInfo; struct TYPE_16__* pLeft; } ;
typedef  TYPE_1__ tSQLExpr ;
typedef  scalar_t__ int32_t ;
struct TYPE_20__ {int /*<<< orphan*/  tableIndex; } ;
struct TYPE_19__ {int /*<<< orphan*/  precision; } ;
struct TYPE_18__ {TYPE_4__* pMeterMeta; } ;
struct TYPE_17__ {scalar_t__ stime; scalar_t__ etime; } ;
typedef  scalar_t__ TSKEY ;
typedef  TYPE_2__ SSqlCmd ;
typedef  TYPE_3__ SMeterMetaInfo ;
typedef  TYPE_4__ SMeterMeta ;
typedef  TYPE_5__ SColumnIndex ;

/* Variables and functions */
 TYPE_5__ COLUMN_INDEX_INITIALIZER ; 
 scalar_t__ INT64_MAX ; 
 scalar_t__ TK_OR ; 
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC5(SSqlCmd* pCmd, tSQLExpr* pExpr) {
  const char* msg0 = "invalid timestamp";
  const char* msg1 = "only one time stamp window allowed";

  if (pExpr == NULL) {
    return TSDB_CODE_SUCCESS;
  }

  if (!FUNC2(pExpr)) {
    if (pExpr->nSQLOptr == TK_OR) {
      FUNC3(pCmd, msg1);
      return TSDB_CODE_INVALID_SQL;
    }

    FUNC5(pCmd, pExpr->pLeft);

    return FUNC5(pCmd, pExpr->pRight);
  } else {
    SColumnIndex index = COLUMN_INDEX_INITIALIZER;
    if (FUNC0(&pExpr->pLeft->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
      return TSDB_CODE_INVALID_SQL;
    }

    SMeterMetaInfo* pMeterMetaInfo = FUNC4(pCmd, index.tableIndex);
    SMeterMeta*     pMeterMeta = pMeterMetaInfo->pMeterMeta;

    tSQLExpr* pRight = pExpr->pRight;

    TSKEY stime = 0;
    TSKEY etime = INT64_MAX;

    if (FUNC1(&stime, &etime, pRight, pExpr->nSQLOptr, pMeterMeta->precision) != TSDB_CODE_SUCCESS) {
      FUNC3(pCmd, msg0);
      return TSDB_CODE_INVALID_SQL;
    }

    // update the timestamp query range
    if (pCmd->stime < stime) {
      pCmd->stime = stime;
    }

    if (pCmd->etime > etime) {
      pCmd->etime = etime;
    }
  }

  return TSDB_CODE_SUCCESS;
}