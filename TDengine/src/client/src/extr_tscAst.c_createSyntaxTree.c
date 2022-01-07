
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_21__ {scalar_t__ nodeType; int colId; TYPE_2__* pExpr; } ;
typedef TYPE_1__ tSQLSyntaxNode ;
struct TYPE_22__ {scalar_t__ nSQLBinaryOptr; TYPE_1__* pRight; TYPE_1__* pLeft; int filterOnPrimaryKey; } ;
typedef TYPE_2__ tSQLBinaryExpr ;
typedef int int32_t ;
struct TYPE_24__ {scalar_t__ n; scalar_t__ type; } ;
struct TYPE_23__ {int name; } ;
typedef TYPE_3__ SSchema ;
typedef TYPE_4__ SSQLToken ;


 scalar_t__ TK_AND ;
 scalar_t__ TK_LP ;
 scalar_t__ TK_OR ;
 scalar_t__ TK_RP ;
 scalar_t__ TSQL_NODE_EXPR ;
 int assert (int ) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ getBinaryExprOptr (TYPE_4__*) ;
 int isQueryOnPrimaryKey (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int pError (char*,scalar_t__) ;
 TYPE_1__* parseRemainStr (char*,TYPE_2__*,TYPE_3__*,scalar_t__,int ,int *) ;
 int reviseBinaryExprIfNecessary (TYPE_1__**,TYPE_1__**,scalar_t__*) ;
 TYPE_1__* tSQLSyntaxNodeCreate (TYPE_3__*,int ,TYPE_4__*) ;
 int tSQLSyntaxNodeDestroy (TYPE_1__*,int *) ;
 TYPE_4__ tStrGetToken (char*,int *,int,int ,int *) ;

__attribute__((used)) static tSQLSyntaxNode *createSyntaxTree(SSchema *pSchema, int32_t numOfCols, char *str, int32_t *i) {
  SSQLToken t0;

  t0 = tStrGetToken(str, i, 0, 0, ((void*)0));
  if (t0.n == 0) {
    return ((void*)0);
  }

  tSQLSyntaxNode *pLeft = ((void*)0);
  if (t0.type == TK_LP) {
    pLeft = createSyntaxTree(pSchema, numOfCols, str, i);
  } else {
    if (t0.type == TK_RP) {
      return ((void*)0);
    }
    pLeft = tSQLSyntaxNodeCreate(pSchema, numOfCols, &t0);
  }

  if (pLeft == ((void*)0)) {
    return ((void*)0);
  }

  t0 = tStrGetToken(str, i, 0, 0, ((void*)0));
  if (t0.n == 0 || t0.type == TK_RP) {
    if (pLeft->nodeType != TSQL_NODE_EXPR) {
      tSQLSyntaxNodeDestroy(pLeft, ((void*)0));
      return ((void*)0);
    }

    return pLeft;
  }


  uint8_t optr = getBinaryExprOptr(&t0);
  if (optr <= 0) {
    pError("not support binary operator:%d", t0.type);
    tSQLSyntaxNodeDestroy(pLeft, ((void*)0));
    return ((void*)0);
  }

  assert(pLeft != ((void*)0));
  tSQLSyntaxNode *pRight = ((void*)0);

  if (t0.type == TK_AND || t0.type == TK_OR || t0.type == TK_LP) {
    pRight = createSyntaxTree(pSchema, numOfCols, str, i);
  } else {






    t0 = tStrGetToken(str, i, 1, 0, ((void*)0));
    if (t0.n == 0) {
      tSQLSyntaxNodeDestroy(pLeft, ((void*)0));
      return ((void*)0);
    }

    if (t0.type == TK_LP) {
      pRight = createSyntaxTree(pSchema, numOfCols, str, i);
    } else {
      pRight = tSQLSyntaxNodeCreate(pSchema, numOfCols, &t0);
    }
  }

  if (pRight == ((void*)0)) {
    tSQLSyntaxNodeDestroy(pLeft, ((void*)0));
    return ((void*)0);
  }


  tSQLBinaryExpr *pBinExpr = (tSQLBinaryExpr *)calloc(1, sizeof(tSQLBinaryExpr));
  reviseBinaryExprIfNecessary(&pLeft, &pRight, &optr);

  pBinExpr->filterOnPrimaryKey = isQueryOnPrimaryKey(pSchema[0].name, pLeft, pRight);
  pBinExpr->pLeft = pLeft;
  pBinExpr->pRight = pRight;
  pBinExpr->nSQLBinaryOptr = optr;

  t0 = tStrGetToken(str, i, 1, 0, ((void*)0));

  if (t0.n == 0 || t0.type == TK_RP) {
    tSQLSyntaxNode *pn = malloc(sizeof(tSQLSyntaxNode));
    pn->nodeType = TSQL_NODE_EXPR;
    pn->pExpr = pBinExpr;
    pn->colId = -1;
    return pn;
  } else {
    uint8_t localOptr = getBinaryExprOptr(&t0);
    if (localOptr <= 0) {
      pError("not support binary operator:%d", t0.type);
      return ((void*)0);
    }

    return parseRemainStr(str, pBinExpr, pSchema, localOptr, numOfCols, i);
  }
}
