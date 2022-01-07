
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* msg; } ;
typedef TYPE_1__ SSchedMsg ;


 int free (char*) ;
 int mTrace (char*,int ) ;
 int mgmtGetDnode (int ) ;
 int mgmtProcessMsgFromDnode (char*,int ,char,int ) ;
 int * taosMsg ;

void mgmtProcessMsgFromDnodeSpec(SSchedMsg *sched) {
  char msgType = *sched->msg;
  char *content = sched->msg + 1;
  mTrace("msg:%s is received from dnode", taosMsg[msgType]);

  mgmtProcessMsgFromDnode(content, 0, msgType, mgmtGetDnode(0));
  free(sched->msg);
}
