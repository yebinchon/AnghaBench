
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int pVal; TYPE_1__* pSchema; int pExpr; } ;
typedef TYPE_2__ tSQLSyntaxNode ;
typedef int int32_t ;
struct TYPE_4__ {char* name; } ;


 scalar_t__ TSQL_NODE_COL ;
 scalar_t__ TSQL_NODE_EXPR ;
 int sprintf (char*,char*,char*) ;
 int tSQLBinaryExprToString (int ,char*,int*) ;
 int tVariantToString (int ,char*) ;

int32_t tSQLBinaryExprToStringImpl(tSQLSyntaxNode *pNode, char *dst, uint8_t type) {
  int32_t len = 0;
  if (type == TSQL_NODE_EXPR) {
    *dst = '(';
    tSQLBinaryExprToString(pNode->pExpr, dst + 1, &len);
    len += 2;
    *(dst + len - 1) = ')';
  } else if (type == TSQL_NODE_COL) {
    len = sprintf(dst, "%s", pNode->pSchema->name);
  } else {
    len = tVariantToString(pNode->pVal, dst);
  }
  return len;
}
