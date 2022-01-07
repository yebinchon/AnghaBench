
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_6__ {int member_0; } ;
typedef int SSqlCmd ;
typedef TYPE_1__ SSQLToken ;
typedef int SColumnIndex ;


 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int extractTableNameFromToken (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ getMeterIndex (TYPE_1__*,int *,int *) ;

int32_t getTableIndexByName(SSQLToken* pToken, SSqlCmd* pCmd, SColumnIndex* pIndex) {
  SSQLToken tableToken = {0};
  extractTableNameFromToken(pToken, &tableToken);

  if (getMeterIndex(&tableToken, pCmd, pIndex) != TSDB_CODE_SUCCESS) {
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}
