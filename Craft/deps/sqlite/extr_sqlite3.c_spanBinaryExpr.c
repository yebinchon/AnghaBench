
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zEnd; int zStart; int pExpr; } ;
typedef int Parse ;
typedef TYPE_1__ ExprSpan ;


 int sqlite3PExpr (int *,int,int ,int ,int ) ;

__attribute__((used)) static void spanBinaryExpr(
    ExprSpan *pOut,
    Parse *pParse,
    int op,
    ExprSpan *pLeft,
    ExprSpan *pRight
  ){
    pOut->pExpr = sqlite3PExpr(pParse, op, pLeft->pExpr, pRight->pExpr, 0);
    pOut->zStart = pLeft->zStart;
    pOut->zEnd = pRight->zEnd;
  }
