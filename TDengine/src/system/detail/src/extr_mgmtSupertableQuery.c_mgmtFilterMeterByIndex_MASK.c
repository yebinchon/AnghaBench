#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSQLBinaryExpr ;
typedef  int /*<<< orphan*/  tQueryResultset ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {TYPE_2__* pExtInfo; int /*<<< orphan*/  setupInfoFn; int /*<<< orphan*/  fp; } ;
struct TYPE_7__ {int /*<<< orphan*/  numOfTags; int /*<<< orphan*/ * pTagSchema; } ;
struct TYPE_6__ {int numOfColumns; int /*<<< orphan*/  pSkipList; int /*<<< orphan*/  numOfTags; int /*<<< orphan*/  meterId; scalar_t__ schema; } ;
typedef  TYPE_1__ STabObj ;
typedef  TYPE_2__ SSyntaxTreeFilterSupporter ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_3__ SBinaryFilterSupp ;

/* Variables and functions */
 int /*<<< orphan*/  TSDB_CODE_OPS_NOT_SUPPORT ; 
 int /*<<< orphan*/  TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  filterPrepare ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  tSQLListTraverseDestroyInfo ; 
 int /*<<< orphan*/  tSkipListNodeFilterCallback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int32_t FUNC6(STabObj* pMetric, tQueryResultset* pRes, char* pCond, int32_t condLen) {
  SSchema* pTagSchema = (SSchema*)(pMetric->schema + pMetric->numOfColumns * sizeof(SSchema));

  tSQLBinaryExpr* pExpr = NULL;
  FUNC2(&pExpr, pTagSchema, pMetric->numOfTags, pCond, condLen);

  // failed to build expression, no result, return immediately
  if (pExpr == NULL) {
    FUNC0("metric:%s, no result returned, error in super table query expression:%s", pMetric->meterId, pCond);
    FUNC5(pCond);

    return TSDB_CODE_OPS_NOT_SUPPORT;
  } else {  // query according to the binary expression
    SSyntaxTreeFilterSupporter s = {.pTagSchema = pTagSchema, .numOfTags = pMetric->numOfTags};
    SBinaryFilterSupp          supp = {.fp = tSkipListNodeFilterCallback, .setupInfoFn = filterPrepare, .pExtInfo = &s};

    FUNC3(pExpr, pMetric->pSkipList, pRes, &supp);
    FUNC1(&pExpr, tSQLListTraverseDestroyInfo);
  }

  FUNC4(pRes);

  return TSDB_CODE_SUCCESS;
}