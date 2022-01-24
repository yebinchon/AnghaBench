#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  n; int /*<<< orphan*/  z; } ;
struct TYPE_5__ {scalar_t__ nSQLOptr; int /*<<< orphan*/  val; TYPE_1__ colInfo; } ;
typedef  TYPE_2__ tSQLExpr ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ TK_BOOL ; 
 scalar_t__ TK_ID ; 
 scalar_t__ TK_STRING ; 
 int /*<<< orphan*/  TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int32_t FUNC3(tSQLExpr* pExpr, char** str) {
  if (pExpr->nSQLOptr == TK_ID) {  // column name
    FUNC1(*str, pExpr->colInfo.z, pExpr->colInfo.n);
    *str += pExpr->colInfo.n;

  } else if (pExpr->nSQLOptr >= TK_BOOL && pExpr->nSQLOptr <= TK_STRING) {  // value
    *str += FUNC2(&pExpr->val, *str);

  } else {
    FUNC0(false);
  }

  return TSDB_CODE_SUCCESS;
}