
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {scalar_t__ nodeType; TYPE_2__* pExpr; } ;
typedef TYPE_1__ tSQLSyntaxNode ;
struct TYPE_16__ {int filterOnPrimaryKey; int nSQLBinaryOptr; TYPE_1__* pRight; TYPE_1__* pLeft; } ;
typedef TYPE_2__ tSQLBinaryExpr ;
typedef int int32_t ;
struct TYPE_17__ {int name; } ;
typedef TYPE_3__ SSchema ;


 scalar_t__ TSQL_NODE_COL ;
 void* TSQL_NODE_EXPR ;
 scalar_t__ TSQL_NODE_VALUE ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* createSyntaxTree (TYPE_3__*,int ,char*,int *) ;
 int isQueryOnPrimaryKey (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int reviseBinaryExprIfNecessary (TYPE_1__**,TYPE_1__**,int *) ;
 int tSQLSyntaxNodeDestroy (TYPE_1__*,int *) ;

__attribute__((used)) static tSQLSyntaxNode *parseRemainStr(char *pstr, tSQLBinaryExpr *pExpr, SSchema *pSchema, int32_t optr,
                                      int32_t numOfCols, int32_t *i) {

  tSQLSyntaxNode *pLeft = malloc(sizeof(tSQLSyntaxNode));
  pLeft->nodeType = TSQL_NODE_EXPR;
  pLeft->pExpr = pExpr;


  tSQLSyntaxNode *pRight = createSyntaxTree(pSchema, numOfCols, pstr, i);
  if (pRight == ((void*)0) || (pRight->nodeType == TSQL_NODE_COL && pLeft->nodeType != TSQL_NODE_VALUE) ||
      (pLeft->nodeType == TSQL_NODE_VALUE && pRight->nodeType != TSQL_NODE_COL)) {
    tSQLSyntaxNodeDestroy(pLeft, ((void*)0));
    tSQLSyntaxNodeDestroy(pRight, ((void*)0));
    return ((void*)0);
  }

  tSQLBinaryExpr *pNewExpr = (tSQLBinaryExpr *)calloc(1, sizeof(tSQLBinaryExpr));
  uint8_t k = optr;
  reviseBinaryExprIfNecessary(&pLeft, &pRight, &k);
  pNewExpr->pLeft = pLeft;
  pNewExpr->pRight = pRight;
  pNewExpr->nSQLBinaryOptr = k;

  pNewExpr->filterOnPrimaryKey = isQueryOnPrimaryKey(pSchema[0].name, pLeft, pRight);

  tSQLSyntaxNode *pn = malloc(sizeof(tSQLSyntaxNode));
  pn->nodeType = TSQL_NODE_EXPR;
  pn->pExpr = pNewExpr;

  return pn;
}
