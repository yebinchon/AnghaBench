
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int numOfPoints ;
typedef int int32_t ;
struct TYPE_3__ {int thandle; } ;
typedef TYPE_1__ SShellObj ;


 int TSDB_MSG_TYPE_SUBMIT_RSP ;
 char* taosBuildRspMsgWithSize (int ,int ,int) ;
 int taosSendMsgToPeer (int ,char*,int) ;

int vnodeSendShellSubmitRspMsg(SShellObj *pObj, int code, int numOfPoints) {
  char *pMsg, *pStart;
  int msgLen;

  pStart = taosBuildRspMsgWithSize(pObj->thandle, TSDB_MSG_TYPE_SUBMIT_RSP, 128);
  if (pStart == ((void*)0)) return -1;
  pMsg = pStart;

  *pMsg = code;
  pMsg++;

  *(int32_t *)pMsg = numOfPoints;
  pMsg += sizeof(numOfPoints);

  msgLen = pMsg - pStart;
  taosSendMsgToPeer(pObj->thandle, pStart, msgLen);

  return msgLen;
}
