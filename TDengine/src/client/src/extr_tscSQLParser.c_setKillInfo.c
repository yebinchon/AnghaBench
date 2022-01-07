
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct SSqlInfo {int sqlType; TYPE_1__* pDCLInfo; } ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ n; int * z; } ;
struct TYPE_9__ {int payload; int command; } ;
struct TYPE_8__ {TYPE_3__ cmd; } ;
struct TYPE_7__ {TYPE_4__* a; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SSQLToken ;





 int TSDB_CODE_INVALID_SQL ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_KILL_MSG_LEN ;
 int TSDB_SQL_KILL_CONNECTION ;
 int TSDB_SQL_KILL_QUERY ;
 int TSDB_SQL_KILL_STREAM ;
 int memset (int ,int ,int ) ;
 int setErrMsg (TYPE_3__*,char const*) ;
 int strncpy (int ,int *,scalar_t__) ;
 char* strtok (int *,char const*) ;
 int strtol (char*,int *,int) ;
 int tListLen (int ) ;
 int validateIpAddress (char*) ;

int32_t setKillInfo(SSqlObj* pSql, struct SSqlInfo* pInfo) {
  SSqlCmd* pCmd = &pSql->cmd;

  switch (pInfo->sqlType) {
    case 129:
      pCmd->command = TSDB_SQL_KILL_QUERY;
      break;
    case 128:
      pCmd->command = TSDB_SQL_KILL_STREAM;
      break;
    case 130:
      pCmd->command = TSDB_SQL_KILL_CONNECTION;
      break;
    default:
      return TSDB_CODE_INVALID_SQL;
  }

  SSQLToken* pToken = &(pInfo->pDCLInfo->a[0]);
  if (pToken->n > TSDB_KILL_MSG_LEN) {
    return TSDB_CODE_INVALID_SQL;
  }

  strncpy(pCmd->payload, pToken->z, pToken->n);

  const char delim = ':';
  char* ipStr = strtok(pToken->z, &delim);
  char* portStr = strtok(((void*)0), &delim);

  if (!validateIpAddress(ipStr)) {
    memset(pCmd->payload, 0, tListLen(pCmd->payload));

    const char* msg = "invalid ip address";
    setErrMsg(pCmd, msg);
    return TSDB_CODE_INVALID_SQL;
  }

  int32_t port = strtol(portStr, ((void*)0), 10);
  if (port <= 0 || port > 65535) {
    memset(pCmd->payload, 0, tListLen(pCmd->payload));

    const char* msg = "invalid port";
    setErrMsg(pCmd, msg);
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}
