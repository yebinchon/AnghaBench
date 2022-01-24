#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* pRight; struct TYPE_6__* pLeft; } ;
typedef  TYPE_1__ tSQLExpr ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char**) ; 

__attribute__((used)) static int32_t FUNC3(tSQLExpr* pExpr, bool addParentheses, char** output) {
  if (!FUNC0(pExpr)) {
    return TSDB_CODE_INVALID_SQL;
  }

  tSQLExpr* pLeft = pExpr->pLeft;
  tSQLExpr* pRight = pExpr->pRight;

  if (addParentheses) {
    *(*output) = '(';
    *output += 1;
  }

  FUNC2(pLeft, output);
  if (FUNC1(pExpr, output) != TSDB_CODE_SUCCESS) {
    return TSDB_CODE_INVALID_SQL;
  }

  FUNC2(pRight, output);

  if (addParentheses) {
    *(*output) = ')';
    *output += 1;
  }

  return TSDB_CODE_SUCCESS;
}