
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pRight; int nSQLBinaryOptr; TYPE_2__* pLeft; } ;
typedef TYPE_1__ tSQLBinaryExpr ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int nodeType; } ;


 scalar_t__ tSQLBinaryExprToStringImpl (TYPE_2__*,char*,int ) ;
 char* tSQLOptrToString (int ,char*) ;

void tSQLBinaryExprToString(tSQLBinaryExpr *pExpr, char *dst, int32_t *len) {
  if (pExpr == ((void*)0)) {
    *dst = 0;
    *len = 0;
  }

  int32_t lhs = tSQLBinaryExprToStringImpl(pExpr->pLeft, dst, pExpr->pLeft->nodeType);
  dst += lhs;
  *len = lhs;

  char *start = tSQLOptrToString(pExpr->nSQLBinaryOptr, dst);
  *len += (start - dst);

  *len += tSQLBinaryExprToStringImpl(pExpr->pRight, start, pExpr->pRight->nodeType);
}
