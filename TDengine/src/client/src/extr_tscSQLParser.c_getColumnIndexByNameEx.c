
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {scalar_t__ numOfTables; int * pMeterInfo; } ;
typedef TYPE_1__ SSqlCmd ;
typedef int SSQLToken ;
typedef int SColumnIndex ;


 int TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int doGetColumnIndexByName (int *,TYPE_1__*,int *) ;
 scalar_t__ getTableIndexByName (int *,TYPE_1__*,int *) ;

int32_t getColumnIndexByNameEx(SSQLToken* pToken, SSqlCmd* pCmd, SColumnIndex* pIndex) {
  if (pCmd->pMeterInfo == ((void*)0) || pCmd->numOfTables == 0) {
    return TSDB_CODE_INVALID_SQL;
  }

  SSQLToken tmpToken = *pToken;

  if (getTableIndexByName(&tmpToken, pCmd, pIndex) != TSDB_CODE_SUCCESS) {
    return TSDB_CODE_INVALID_SQL;
  }

  return doGetColumnIndexByName(&tmpToken, pCmd, pIndex);
}
