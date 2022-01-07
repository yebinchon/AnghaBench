
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int thandle; } ;
typedef TYPE_1__ SShellObj ;


 int TSDB_MSG_TYPE_QUERY_RSP ;
 char* taosBuildRspMsgWithSize (int ,int ,int) ;
 int taosSendMsgToPeer (int ,char*,int) ;

int vnodeSendQueryRspMsg(SShellObj *pObj, int code, void *qhandle) {
  char *pMsg, *pStart;
  int msgLen;

  pStart = taosBuildRspMsgWithSize(pObj->thandle, TSDB_MSG_TYPE_QUERY_RSP, 128);
  if (pStart == ((void*)0)) return -1;
  pMsg = pStart;

  *pMsg = code;
  pMsg++;

  *((uint64_t *)pMsg) = (uint64_t)qhandle;
  pMsg += 8;

  msgLen = pMsg - pStart;
  taosSendMsgToPeer(pObj->thandle, pStart, msgLen);

  return msgLen;
}
