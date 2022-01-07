
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


 scalar_t__ TSDB_FUNC_TAGPRJ ;
 TYPE_3__* tscSqlExprGet (TYPE_2__*,scalar_t__) ;

bool tscQueryMetricTags(SSqlCmd* pCmd) {
  for (int32_t i = 0; i < pCmd->fieldsInfo.numOfOutputCols; ++i) {
    if (tscSqlExprGet(pCmd, i)->functionId != TSDB_FUNC_TAGPRJ) {
      return 0;
    }
  }

  return 1;
}
