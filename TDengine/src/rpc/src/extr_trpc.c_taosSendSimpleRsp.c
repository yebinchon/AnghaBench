
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tError (char*) ;
 char* taosBuildRspMsgWithSize (void*,char,int) ;
 int taosSendMsgToPeer (void*,char*,int) ;

int taosSendSimpleRsp(void *thandle, char rsptype, char code) {
  char *pMsg, *pStart;
  int msgLen;

  if (thandle == ((void*)0)) {
    tError("connection is gone, response could not be sent");
    return -1;
  }

  pStart = taosBuildRspMsgWithSize(thandle, rsptype, 32);
  pMsg = pStart;

  *pMsg = code;
  pMsg++;

  msgLen = (int)(pMsg - pStart);
  taosSendMsgToPeer(thandle, pStart, msgLen);

  return msgLen;
}
