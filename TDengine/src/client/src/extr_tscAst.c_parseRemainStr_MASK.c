#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {scalar_t__ nodeType; TYPE_2__* pExpr; } ;
typedef  TYPE_1__ tSQLSyntaxNode ;
struct TYPE_16__ {int /*<<< orphan*/  filterOnPrimaryKey; int /*<<< orphan*/  nSQLBinaryOptr; TYPE_1__* pRight; TYPE_1__* pLeft; } ;
typedef  TYPE_2__ tSQLBinaryExpr ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ SSchema ;

/* Variables and functions */
 scalar_t__ TSQL_NODE_COL ; 
 void* TSQL_NODE_EXPR ; 
 scalar_t__ TSQL_NODE_VALUE ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tSQLSyntaxNode *FUNC6(char *pstr, tSQLBinaryExpr *pExpr, SSchema *pSchema, int32_t optr,
                                      int32_t numOfCols, int32_t *i) {
  // set the previous generated node as the left child of new root
  tSQLSyntaxNode *pLeft = FUNC3(sizeof(tSQLSyntaxNode));
  pLeft->nodeType = TSQL_NODE_EXPR;
  pLeft->pExpr = pExpr;

  // remain is the right child
  tSQLSyntaxNode *pRight = FUNC1(pSchema, numOfCols, pstr, i);
  if (pRight == NULL || (pRight->nodeType == TSQL_NODE_COL && pLeft->nodeType != TSQL_NODE_VALUE) ||
      (pLeft->nodeType == TSQL_NODE_VALUE && pRight->nodeType != TSQL_NODE_COL)) {
    FUNC5(pLeft, NULL);
    FUNC5(pRight, NULL);
    return NULL;
  }

  tSQLBinaryExpr *pNewExpr = (tSQLBinaryExpr *)FUNC0(1, sizeof(tSQLBinaryExpr));
  uint8_t         k = optr;
  FUNC4(&pLeft, &pRight, &k);
  pNewExpr->pLeft = pLeft;
  pNewExpr->pRight = pRight;
  pNewExpr->nSQLBinaryOptr = k;

  pNewExpr->filterOnPrimaryKey = FUNC2(pSchema[0].name, pLeft, pRight);

  tSQLSyntaxNode *pn = FUNC3(sizeof(tSQLSyntaxNode));
  pn->nodeType = TSQL_NODE_EXPR;
  pn->pExpr = pNewExpr;

  return pn;
}