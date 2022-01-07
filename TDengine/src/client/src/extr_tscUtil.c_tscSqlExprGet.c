
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {size_t numOfExprs; int * pExprs; } ;
struct TYPE_5__ {TYPE_1__ exprsInfo; } ;
typedef int SSqlExpr ;
typedef TYPE_2__ SSqlCmd ;



SSqlExpr* tscSqlExprGet(SSqlCmd* pCmd, int32_t index) {
  if (pCmd->exprsInfo.numOfExprs <= index) {
    return ((void*)0);
  }

  return &pCmd->exprsInfo.pExprs[index];
}
