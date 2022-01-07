
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int numOfCols; int count; int payload; } ;
struct TYPE_4__ {TYPE_2__ cmd; } ;
typedef int STagData ;
typedef TYPE_1__ SSqlObj ;
typedef TYPE_2__ SSqlCmd ;
typedef int SSchema ;
typedef int SMgmtHead ;
typedef int SCreateTableMsg ;


 int TSDB_EXTRA_PAYLOAD_SIZE ;
 int minMsgSize () ;
 int strlen (int ) ;

int tscEstimateCreateTableMsgLength(SSqlObj *pSql) {
  SSqlCmd *pCmd = &(pSql->cmd);

  int32_t size = minMsgSize() + sizeof(SMgmtHead) + sizeof(SCreateTableMsg);

  if (pCmd->numOfCols == 0 && pCmd->count == 0) {
    size += sizeof(STagData);
  } else {
    size += sizeof(SSchema) * (pCmd->numOfCols + pCmd->count);
  }

  if (strlen(pCmd->payload) > 0) size += strlen(pCmd->payload) + 1;

  return size + TSDB_EXTRA_PAYLOAD_SIZE;
}
