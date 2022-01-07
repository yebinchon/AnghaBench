
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t n; int * z; } ;
typedef TYPE_1__ Token ;
struct TYPE_7__ {int * zEnd; int * zStart; int pExpr; } ;
typedef int Parse ;
typedef TYPE_2__ ExprSpan ;


 int sqlite3PExpr (int *,int,int ,int ,TYPE_1__*) ;

__attribute__((used)) static void spanExpr(ExprSpan *pOut, Parse *pParse, int op, Token *pValue){
    pOut->pExpr = sqlite3PExpr(pParse, op, 0, 0, pValue);
    pOut->zStart = pValue->z;
    pOut->zEnd = &pValue->z[pValue->n];
  }
