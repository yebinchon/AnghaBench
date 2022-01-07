
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_4__ {scalar_t__ functionId; } ;
struct TYPE_5__ {TYPE_1__ pBase; } ;
typedef TYPE_2__ SSqlFunctionExpr ;


 scalar_t__ TSDB_FUNC_PRJ ;

bool vnodeIsProjectionQuery(SSqlFunctionExpr* pExpr, int32_t numOfOutput) {
  for (int32_t i = 0; i < numOfOutput; ++i) {
    if (pExpr[i].pBase.functionId != TSDB_FUNC_PRJ) {
      return 0;
    }
  }

  return 1;
}
