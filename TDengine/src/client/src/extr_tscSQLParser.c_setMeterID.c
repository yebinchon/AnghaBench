
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {int member_0; } ;
struct TYPE_13__ {int cmd; } ;
typedef TYPE_1__ SSqlObj ;
typedef int SSqlCmd ;
typedef TYPE_2__ SSQLToken ;
typedef TYPE_3__ SMeterMetaInfo ;


 scalar_t__ TSDB_CODE_SUCCESS ;
 int * getAccountId (TYPE_1__*) ;
 int getCurrentDBName (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ hasSpecifyDB (TYPE_2__*) ;
 int setErrMsg (int *,char const*) ;
 scalar_t__ setObjFullName (int ,int *,TYPE_2__*,TYPE_2__*,int *) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,scalar_t__) ;

int32_t setMeterID(SSqlObj* pSql, SSQLToken* pzTableName, int32_t tableIndex) {
  const char* msg = "name too long";

  SSqlCmd* pCmd = &pSql->cmd;
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, tableIndex);
  int32_t code = TSDB_CODE_SUCCESS;

  if (hasSpecifyDB(pzTableName)) {




    code = setObjFullName(pMeterMetaInfo->name, getAccountId(pSql), ((void*)0), pzTableName, ((void*)0));
  } else {
    SSQLToken t = {0};
    getCurrentDBName(pSql, &t);

    code = setObjFullName(pMeterMetaInfo->name, ((void*)0), &t, pzTableName, ((void*)0));
  }

  if (code != TSDB_CODE_SUCCESS) {
    setErrMsg(pCmd, msg);
  }

  return code;
}
