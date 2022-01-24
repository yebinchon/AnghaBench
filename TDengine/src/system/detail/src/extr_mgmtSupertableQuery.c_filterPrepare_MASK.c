#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  nType; } ;
typedef  TYPE_3__ tVariant ;
struct TYPE_14__ {int /*<<< orphan*/  nSQLBinaryOptr; TYPE_2__* pLeft; TYPE_1__* pRight; TYPE_5__* info; } ;
typedef  TYPE_4__ tSQLBinaryExpr ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct TYPE_15__ {TYPE_6__ sch; int /*<<< orphan*/  q; int /*<<< orphan*/  optr; int /*<<< orphan*/  compare; scalar_t__ offset; scalar_t__ colIdx; } ;
typedef  TYPE_5__ tQueryInfo ;
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {TYPE_6__* pSchema; } ;
struct TYPE_11__ {TYPE_3__* pVal; } ;
typedef  int /*<<< orphan*/  SSyntaxTreeFilterSupporter ;
typedef  TYPE_6__ SSchema ;

/* Variables and functions */
 scalar_t__ TSDB_MAX_TAGS ; 
 scalar_t__ TSDB_MAX_TAGS_LEN ; 
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_6__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(tSQLBinaryExpr* pExpr, void* param) {
  if (pExpr->info != NULL) {
    return;
  }

  int32_t i = 0, offset = 0;
  pExpr->info = FUNC1(1, sizeof(tQueryInfo));

  tQueryInfo*                 pInfo = pExpr->info;
  SSyntaxTreeFilterSupporter* pSupporter = (SSyntaxTreeFilterSupporter*)param;

  tVariant* pCond = pExpr->pRight->pVal;
  SSchema*  pSchema = pExpr->pLeft->pSchema;

  FUNC3(pSupporter, pSchema, &i, &offset);
  FUNC0((i >= 0 && i < TSDB_MAX_TAGS) || (i == TSDB_TBNAME_COLUMN_INDEX));
  FUNC0((offset >= 0 && offset < TSDB_MAX_TAGS_LEN) || (offset == TSDB_TBNAME_COLUMN_INDEX));

  pInfo->sch = *pSchema;
  pInfo->colIdx = i;
  pInfo->optr = pExpr->nSQLBinaryOptr;
  pInfo->offset = offset;
  pInfo->compare = FUNC2(pSchema->type, pCond->nType, pInfo->optr);

  FUNC4(&pInfo->q, pCond);
  FUNC5(&pInfo->q, pInfo->sch.type);
}