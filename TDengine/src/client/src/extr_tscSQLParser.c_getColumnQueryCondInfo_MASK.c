#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nSQLOptr; int /*<<< orphan*/  colInfo; struct TYPE_5__* pLeft; struct TYPE_5__* pRight; } ;
typedef  TYPE_1__ tSQLExpr ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  SSqlCmd ;
typedef  int /*<<< orphan*/  SColumnIndex ;

/* Variables and functions */
 int /*<<< orphan*/  COLUMN_INDEX_INITIALIZER ; 
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int32_t FUNC3(SSqlCmd* pCmd, tSQLExpr* pExpr, int32_t relOptr) {
  if (pExpr == NULL) {
    return TSDB_CODE_SUCCESS;
  }

  if (!FUNC2(pExpr)) {  // internal node
    int32_t ret = FUNC3(pCmd, pExpr->pLeft, pExpr->nSQLOptr);
    if (ret != TSDB_CODE_SUCCESS) {
      return ret;
    }

    return FUNC3(pCmd, pExpr->pRight, pExpr->nSQLOptr);
  } else {  // handle leaf node
    SColumnIndex index = COLUMN_INDEX_INITIALIZER;
    if (FUNC1(&pExpr->pLeft->colInfo, pCmd, &index) != TSDB_CODE_SUCCESS) {
      return TSDB_CODE_INVALID_SQL;
    }

    return FUNC0(pCmd, &index, pExpr, relOptr);
  }
}