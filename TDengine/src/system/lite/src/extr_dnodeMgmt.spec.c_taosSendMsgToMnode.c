
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* msg; int * thandle; int * ahandle; int fp; } ;
typedef TYPE_1__ SSchedMsg ;
typedef int SMgmtObj ;


 int dmQhandle ;
 int mTrace (char*,int ) ;
 int mgmtProcessMsgFromDnodeSpec ;
 int * taosMsg ;
 int taosScheduleTask (int ,TYPE_1__*) ;

int taosSendMsgToMnode(SMgmtObj *pObj, char *msg, int msgLen) {
  mTrace("msg:%s is sent to mnode", taosMsg[*(msg-1)]);




  SSchedMsg schedMsg;
  schedMsg.fp = mgmtProcessMsgFromDnodeSpec;
  schedMsg.msg = msg - 1;
  schedMsg.ahandle = ((void*)0);
  schedMsg.thandle = ((void*)0);
  taosScheduleTask(dmQhandle, &schedMsg);

  return 0;
}
