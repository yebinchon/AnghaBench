
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* msg; int fp; int * ahandle; } ;
typedef int SShellObj ;
typedef TYPE_1__ SSchedMsg ;


 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int queryQhandle ;
 int taosScheduleTask (int ,TYPE_1__*) ;
 int vnodeExecuteRetrieveReq ;

int vnodeProcessRetrieveRequest(char *pMsg, int msgLen, SShellObj *pObj) {
  SSchedMsg schedMsg;

  char *msg = malloc(msgLen);
  memcpy(msg, pMsg, msgLen);
  schedMsg.msg = msg;
  schedMsg.ahandle = pObj;
  schedMsg.fp = vnodeExecuteRetrieveReq;
  taosScheduleTask(queryQhandle, &schedMsg);

  return msgLen;
}
