
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int numOfExprs; int * pExprs; } ;
typedef TYPE_1__ SSqlExprInfo ;


 int memmove (int *,int *,int) ;

__attribute__((used)) static void _exprEvic(SSqlExprInfo* pExprInfo, int32_t index) {
  if (index < pExprInfo->numOfExprs) {
    memmove(&pExprInfo->pExprs[index + 1], &pExprInfo->pExprs[index],
            sizeof(pExprInfo->pExprs[0]) * (pExprInfo->numOfExprs - index));
  }
}
