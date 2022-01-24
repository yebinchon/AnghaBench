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
struct TYPE_5__ {scalar_t__ nSQLOptr; int /*<<< orphan*/  colInfo; struct TYPE_5__* pRight; struct TYPE_5__* pLeft; } ;
typedef  TYPE_1__ tSQLExpr ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  SSqlCmd ;

/* Variables and functions */
 scalar_t__ TK_IN ; 
 scalar_t__ TK_LIKE ; 
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int32_t FUNC4(SSqlCmd* pCmd, tSQLExpr* pTableCond, char* str) {
  const char* msg0 = "invalid table name list";

  if (pTableCond == NULL) {
    return TSDB_CODE_SUCCESS;
  }

  tSQLExpr* pLeft = pTableCond->pLeft;
  tSQLExpr* pRight = pTableCond->pRight;

  if (!FUNC0(&pLeft->colInfo)) {
    return TSDB_CODE_INVALID_SQL;
  }

  int32_t ret = TSDB_CODE_SUCCESS;

  if (pTableCond->nSQLOptr == TK_IN) {
    ret = FUNC3(pRight, str);
  } else if (pTableCond->nSQLOptr == TK_LIKE) {
    ret = FUNC2(pRight, str);
  }

  if (ret != TSDB_CODE_SUCCESS) {
    FUNC1(pCmd, msg0);
  }

  return ret;
}