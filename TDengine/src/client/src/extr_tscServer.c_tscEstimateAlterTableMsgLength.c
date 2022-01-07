
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfCols; } ;
typedef TYPE_1__ SSqlCmd ;
typedef int SSchema ;
typedef int SMgmtHead ;
typedef int SAlterTableMsg ;


 int TSDB_EXTRA_PAYLOAD_SIZE ;
 int minMsgSize () ;

int tscEstimateAlterTableMsgLength(SSqlCmd *pCmd) {
  return minMsgSize() + sizeof(SMgmtHead) + sizeof(SAlterTableMsg) + sizeof(SSchema) * pCmd->numOfCols +
         TSDB_EXTRA_PAYLOAD_SIZE;
}
