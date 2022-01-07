
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_11__ {int groupbyExpr; TYPE_1__ fieldsInfo; } ;
struct TYPE_9__ {int colId; } ;
struct TYPE_10__ {scalar_t__ functionId; TYPE_2__ colInfo; } ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;


 scalar_t__ TSDB_FUNC_TAGPRJ ;
 int tagColumnInGroupby (int *,int ) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static bool allTagPrjInGroupby(SSqlCmd* pCmd) {
  bool allInGroupby = 1;

  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);
    if (pExpr->functionId != TSDB_FUNC_TAGPRJ) {
      continue;
    }

    if (!tagColumnInGroupby(&pCmd->groupbyExpr, pExpr->colInfo.colId)) {
      allInGroupby = 0;
      break;
    }
  }


  return allInGroupby;
}
