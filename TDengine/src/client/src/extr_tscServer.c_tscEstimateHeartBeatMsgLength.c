
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; TYPE_1__* pTscObj; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* streamList; TYPE_3__* sqlList; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlStream ;
typedef TYPE_3__ SSqlObj ;
typedef int SSList ;
typedef int SSDesc ;
typedef int SQList ;
typedef int SQDesc ;
typedef int SMgmtHead ;


 int TSDB_EXTRA_PAYLOAD_SIZE ;
 scalar_t__ tsRpcHeadSize ;

int tscEstimateHeartBeatMsgLength(SSqlObj *pSql) {
  int size = 0;
  STscObj *pObj = pSql->pTscObj;

  size += tsRpcHeadSize + sizeof(SMgmtHead);
  size += sizeof(SQList);

  SSqlObj *tpSql = pObj->sqlList;
  while (tpSql) {
    size += sizeof(SQDesc);
    tpSql = tpSql->next;
  }

  size += sizeof(SSList);
  SSqlStream *pStream = pObj->streamList;
  while (pStream) {
    size += sizeof(SSDesc);
    pStream = pStream->next;
  }

  return size + TSDB_EXTRA_PAYLOAD_SIZE;
}
