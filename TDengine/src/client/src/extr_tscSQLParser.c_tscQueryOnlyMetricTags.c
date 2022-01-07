
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_9__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_11__ {TYPE_2__ fieldsInfo; int type; } ;
struct TYPE_8__ {scalar_t__ colIdx; } ;
struct TYPE_10__ {scalar_t__ functionId; TYPE_1__ colInfo; } ;
typedef TYPE_3__ SSqlExpr ;
typedef TYPE_4__ SSqlCmd ;


 int QUERY_IS_STABLE_QUERY (int ) ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_FUNC_COUNT ;
 scalar_t__ TSDB_FUNC_TAGPRJ ;
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 int assert (int ) ;
 TYPE_3__* tscSqlExprGet (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static int32_t tscQueryOnlyMetricTags(SSqlCmd* pCmd, bool* queryOnMetricTags) {
  assert(QUERY_IS_STABLE_QUERY(pCmd->type));

  *queryOnMetricTags = 1;
  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    SSqlExpr* pExpr = tscSqlExprGet(pCmd, i);

    if (pExpr->functionId != TSDB_FUNC_TAGPRJ &&
        !(pExpr->functionId == TSDB_FUNC_COUNT && pExpr->colInfo.colIdx == TSDB_TBNAME_COLUMN_INDEX)) {
      *queryOnMetricTags = 0;
      break;
    }
  }

  return TSDB_CODE_SUCCESS;
}
