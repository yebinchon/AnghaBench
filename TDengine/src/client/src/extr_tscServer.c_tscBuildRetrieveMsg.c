
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_6__ {char* payload; int payloadLen; int msgType; int type; } ;
struct TYPE_5__ {int qhandle; } ;
struct TYPE_7__ {TYPE_2__ cmd; TYPE_1__ res; } ;
typedef TYPE_3__ SSqlObj ;


 int TSDB_MSG_TYPE_RETRIEVE ;
 int htons (int ) ;
 int tsRpcHeadSize ;

int tscBuildRetrieveMsg(SSqlObj *pSql) {
  char *pMsg, *pStart;
  int msgLen = 0;

  pStart = pSql->cmd.payload + tsRpcHeadSize;
  pMsg = pStart;

  *((uint64_t *)pMsg) = pSql->res.qhandle;
  pMsg += sizeof(pSql->res.qhandle);

  *((uint16_t*)pMsg) = htons(pSql->cmd.type);
  pMsg += sizeof(pSql->cmd.type);

  msgLen = pMsg - pStart;
  pSql->cmd.payloadLen = msgLen;
  pSql->cmd.msgType = TSDB_MSG_TYPE_RETRIEVE;

  return msgLen;
}
