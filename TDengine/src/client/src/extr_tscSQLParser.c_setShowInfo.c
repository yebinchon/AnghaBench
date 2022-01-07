
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct SSqlInfo {int sqlType; TYPE_1__* pDCLInfo; } ;
typedef int int8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_17__ {int name; } ;
struct TYPE_16__ {scalar_t__ n; int z; } ;
struct TYPE_15__ {scalar_t__ payloadLen; int payload; int showType; int command; } ;
struct TYPE_14__ {TYPE_3__ cmd; } ;
struct TYPE_13__ {int nTokens; TYPE_4__* a; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SSQLToken ;
typedef TYPE_5__ SMeterMetaInfo ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DB_NAME_LEN ;
 scalar_t__ TSDB_METER_NAME_LEN ;
 int TSDB_MGMT_TABLE_ACCT ;
 int TSDB_MGMT_TABLE_CONFIGS ;
 int TSDB_MGMT_TABLE_CONNS ;
 int TSDB_MGMT_TABLE_DB ;
 int TSDB_MGMT_TABLE_GRANTS ;
 int TSDB_MGMT_TABLE_METRIC ;
 int TSDB_MGMT_TABLE_MNODE ;
 int TSDB_MGMT_TABLE_MODULE ;
 int TSDB_MGMT_TABLE_PNODE ;
 int TSDB_MGMT_TABLE_QUERIES ;
 int TSDB_MGMT_TABLE_SCORES ;
 int TSDB_MGMT_TABLE_STREAMS ;
 int TSDB_MGMT_TABLE_TABLE ;
 int TSDB_MGMT_TABLE_USER ;
 int TSDB_MGMT_TABLE_VGROUP ;
 int TSDB_SQL_SHOW ;
 int getAccountId (TYPE_2__*) ;
 int setErrMsg (TYPE_3__*,char const*) ;
 scalar_t__ setObjFullName (int ,int ,TYPE_4__*,int *,int *) ;
 scalar_t__ strdequote (int ) ;
 int strncpy (int ,int ,scalar_t__) ;
 TYPE_5__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;
 scalar_t__ tscValidateName (TYPE_4__*) ;

int32_t setShowInfo(SSqlObj* pSql, struct SSqlInfo* pInfo) {
  SSqlCmd* pCmd = &pSql->cmd;
  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  pCmd->command = TSDB_SQL_SHOW;
  int8_t type = pInfo->sqlType;

  const char* msg = "database name too long";
  const char* msg1 = "invalid database name";
  const char* msg2 = "pattern filter string too long";

  switch (type) {
    case 128:
      pCmd->showType = TSDB_MGMT_TABLE_VGROUP;
      break;
    case 130:
      pCmd->showType = TSDB_MGMT_TABLE_TABLE;
      break;
    case 132:
      pCmd->showType = TSDB_MGMT_TABLE_METRIC;
      break;

    case 139:
      pCmd->showType = TSDB_MGMT_TABLE_DB;
      break;
    case 136:
      pCmd->showType = TSDB_MGMT_TABLE_MNODE;
      break;
    case 138:
      pCmd->showType = TSDB_MGMT_TABLE_PNODE;
      break;
    case 142:
      pCmd->showType = TSDB_MGMT_TABLE_ACCT;
      break;
    case 129:
      pCmd->showType = TSDB_MGMT_TABLE_USER;
      break;
    case 135:
      pCmd->showType = TSDB_MGMT_TABLE_MODULE;
      break;
    case 140:
      pCmd->showType = TSDB_MGMT_TABLE_CONNS;
      break;
    case 134:
      pCmd->showType = TSDB_MGMT_TABLE_QUERIES;
      break;
    case 133:
      pCmd->showType = TSDB_MGMT_TABLE_SCORES;
      break;
    case 137:
      pCmd->showType = TSDB_MGMT_TABLE_GRANTS;
      break;
    case 131:
      pCmd->showType = TSDB_MGMT_TABLE_STREAMS;
      break;
    case 141:
      pCmd->showType = TSDB_MGMT_TABLE_CONFIGS;
      break;
    default:
      return TSDB_CODE_INVALID_SQL;
  }





  if (type == 130 || type == 132 || type == 128) {

    if (pInfo->pDCLInfo->nTokens > 0) {
      SSQLToken* pDbPrefixToken = &pInfo->pDCLInfo->a[0];

      if (pDbPrefixToken->n > TSDB_DB_NAME_LEN) {
        setErrMsg(pCmd, msg);
        return TSDB_CODE_INVALID_SQL;
      }

      if (pDbPrefixToken->n > 0 && tscValidateName(pDbPrefixToken) != TSDB_CODE_SUCCESS) {
        setErrMsg(pCmd, msg1);
        return TSDB_CODE_INVALID_SQL;
      }

      int32_t ret = 0;
      if (pDbPrefixToken->n > 0) {
        ret = setObjFullName(pMeterMetaInfo->name, getAccountId(pSql), pDbPrefixToken, ((void*)0), ((void*)0));
      }

      if (ret != TSDB_CODE_SUCCESS) {
        return ret;
      }

      if (type != 128 && pInfo->pDCLInfo->nTokens == 2) {

        SSQLToken* likeToken = &pInfo->pDCLInfo->a[1];

        strncpy(pCmd->payload, likeToken->z, likeToken->n);
        pCmd->payloadLen = strdequote(pCmd->payload);

        if (pCmd->payloadLen > TSDB_METER_NAME_LEN) {
          setErrMsg(pCmd, msg2);
          return TSDB_CODE_INVALID_SQL;
        }
      }
    }
  }

  return TSDB_CODE_SUCCESS;
}
