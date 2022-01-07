
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_9__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_8__ {scalar_t__ functionId; } ;
typedef TYPE_2__ SSqlExpr ;
typedef TYPE_3__ SSqlCmd ;


 scalar_t__ TSDB_FUNC_PRJ ;
 scalar_t__ TSDB_FUNC_TAGPRJ ;
 TYPE_2__* tscSqlExprGet (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static bool onlyTagPrjFunction(SSqlCmd* pCmd) {
  bool hasTagPrj = 0;
  bool hasColumnPrj = 0;

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);
    if (pExpr->functionId == TSDB_FUNC_PRJ) {
      hasColumnPrj = 1;
    } else if (pExpr->functionId == TSDB_FUNC_TAGPRJ) {
      hasTagPrj = 1;
    }
  }

  return (hasTagPrj) && (hasColumnPrj == 0);
}
