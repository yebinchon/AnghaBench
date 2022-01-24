#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_21__ {scalar_t__ nodeType; int colId; TYPE_2__* pExpr; } ;
typedef  TYPE_1__ tSQLSyntaxNode ;
struct TYPE_22__ {scalar_t__ nSQLBinaryOptr; TYPE_1__* pRight; TYPE_1__* pLeft; int /*<<< orphan*/  filterOnPrimaryKey; } ;
typedef  TYPE_2__ tSQLBinaryExpr ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_24__ {scalar_t__ n; scalar_t__ type; } ;
struct TYPE_23__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ SSchema ;
typedef  TYPE_4__ SSQLToken ;

/* Variables and functions */
 scalar_t__ TK_AND ; 
 scalar_t__ TK_LP ; 
 scalar_t__ TK_OR ; 
 scalar_t__ TK_RP ; 
 scalar_t__ TSQL_NODE_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 TYPE_1__* FUNC6 (char*,TYPE_2__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,TYPE_1__**,scalar_t__*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_4__ FUNC10 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tSQLSyntaxNode *FUNC11(SSchema *pSchema, int32_t numOfCols, char *str, int32_t *i) {
  SSQLToken t0;

  t0 = FUNC10(str, i, false, 0, NULL);
  if (t0.n == 0) {
    return NULL;
  }

  tSQLSyntaxNode *pLeft = NULL;
  if (t0.type == TK_LP) {  // start new left child branch
    pLeft = FUNC11(pSchema, numOfCols, str, i);
  } else {
    if (t0.type == TK_RP) {
      return NULL;
    }
    pLeft = FUNC8(pSchema, numOfCols, &t0);
  }

  if (pLeft == NULL) {
    return NULL;
  }

  t0 = FUNC10(str, i, false, 0, NULL);
  if (t0.n == 0 || t0.type == TK_RP) {
    if (pLeft->nodeType != TSQL_NODE_EXPR) { // if left is not the expr, it is not a legal expr
      FUNC9(pLeft, NULL);
      return NULL;
    }

    return pLeft;
  }

  // get the operator of expr
  uint8_t optr = FUNC2(&t0);
  if (optr <= 0) {
    FUNC5("not support binary operator:%d", t0.type);
    FUNC9(pLeft, NULL);
    return NULL;
  }

  FUNC0(pLeft != NULL);
  tSQLSyntaxNode *pRight = NULL;

  if (t0.type == TK_AND || t0.type == TK_OR || t0.type == TK_LP) {
    pRight = FUNC11(pSchema, numOfCols, str, i);
  } else {
    /*
     * In case that pLeft is a field identification,
     * we parse the value in expression according to queried field type,
     * if we do not get the information, in case of value of field presented first,
     * we revised the value after the binary expression is completed.
     */
    t0 = FUNC10(str, i, true, 0, NULL);
    if (t0.n == 0) {
      FUNC9(pLeft, NULL);  // illegal expression
      return NULL;
    }

    if (t0.type == TK_LP) {
      pRight = FUNC11(pSchema, numOfCols, str, i);
    } else {
      pRight = FUNC8(pSchema, numOfCols, &t0);
    }
  }

  if (pRight == NULL) {
    FUNC9(pLeft, NULL);
    return NULL;
  }

  /* create binary expr as the child of new parent node */
  tSQLBinaryExpr *pBinExpr = (tSQLBinaryExpr *)FUNC1(1, sizeof(tSQLBinaryExpr));
  FUNC7(&pLeft, &pRight, &optr);

  pBinExpr->filterOnPrimaryKey = FUNC3(pSchema[0].name, pLeft, pRight);
  pBinExpr->pLeft = pLeft;
  pBinExpr->pRight = pRight;
  pBinExpr->nSQLBinaryOptr = optr;

  t0 = FUNC10(str, i, true, 0, NULL);

  if (t0.n == 0 || t0.type == TK_RP) {
    tSQLSyntaxNode *pn = FUNC4(sizeof(tSQLSyntaxNode));
    pn->nodeType = TSQL_NODE_EXPR;
    pn->pExpr = pBinExpr;
    pn->colId = -1;
    return pn;
  } else {
    uint8_t localOptr = FUNC2(&t0);
    if (localOptr <= 0) {
      FUNC5("not support binary operator:%d", t0.type);
      return NULL;
    }

    return FUNC6(str, pBinExpr, pSchema, localOptr, numOfCols, i);
  }
}