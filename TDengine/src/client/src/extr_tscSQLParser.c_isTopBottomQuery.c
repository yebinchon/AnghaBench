
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {scalar_t__ functionId; } ;
struct TYPE_6__ {scalar_t__ numOfOutputCols; } ;
struct TYPE_7__ {TYPE_1__ fieldsInfo; } ;
typedef TYPE_2__ SSqlCmd ;


 scalar_t__ TSDB_FUNC_BOTTOM ;
 scalar_t__ TSDB_FUNC_TOP ;
 TYPE_3__* tscSqlExprGet (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static bool isTopBottomQuery(SSqlCmd* pCmd) {
  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    int32_t functionId = tscSqlExprGet(pCmd, i)->functionId;

    if (functionId == TSDB_FUNC_TOP || functionId == TSDB_FUNC_BOTTOM) {
      return 1;
    }
  }

  return 0;
}
