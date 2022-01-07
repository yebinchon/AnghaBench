
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nodeType; int * pExpr; } ;
typedef TYPE_1__ tSQLSyntaxNode ;
typedef int tSQLBinaryExpr ;
typedef scalar_t__ int32_t ;
typedef int SSchema ;


 scalar_t__ TSQL_NODE_EXPR ;
 int assert (int) ;
 TYPE_1__* createSyntaxTree (int *,scalar_t__,char*,scalar_t__*) ;
 int free (TYPE_1__*) ;

void tSQLBinaryExprFromString(tSQLBinaryExpr **pExpr, SSchema *pSchema, int32_t numOfCols, char *src, int32_t len) {
  *pExpr = ((void*)0);
  if (len <= 0 || src == ((void*)0) || pSchema == ((void*)0) || numOfCols <= 0) {
    return;
  }

  int32_t pos = 0;
  tSQLSyntaxNode *pStxNode = createSyntaxTree(pSchema, numOfCols, src, &pos);
  if (pStxNode != ((void*)0)) {
    assert(pStxNode->nodeType == TSQL_NODE_EXPR);
    *pExpr = pStxNode->pExpr;
    free(pStxNode);
  }
}
