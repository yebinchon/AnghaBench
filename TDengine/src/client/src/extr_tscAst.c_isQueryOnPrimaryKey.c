
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ nodeType; TYPE_2__* pExpr; TYPE_1__* pSchema; } ;
typedef TYPE_3__ tSQLSyntaxNode ;
struct TYPE_7__ {int filterOnPrimaryKey; } ;
struct TYPE_6__ {int name; } ;


 scalar_t__ TSQL_NODE_COL ;
 scalar_t__ TSQL_NODE_EXPR ;
 scalar_t__ strcmp (char const*,int ) ;

uint8_t isQueryOnPrimaryKey(const char *primaryColumnName, const tSQLSyntaxNode *pLeft, const tSQLSyntaxNode *pRight) {
  if (pLeft->nodeType == TSQL_NODE_COL) {

    return (strcmp(primaryColumnName, pLeft->pSchema->name) == 0) ? 1 : 0;
  } else {

    return ((pLeft->nodeType == TSQL_NODE_EXPR && pLeft->pExpr->filterOnPrimaryKey == 1) ||
            (pRight->nodeType == TSQL_NODE_EXPR && pRight->pExpr->filterOnPrimaryKey == 1)) == 1
               ? 1
               : 0;
  }
}
