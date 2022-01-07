
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int killed; } ;
struct TYPE_6__ {void* ahandle; void* thandle; int * msg; int fp; int member_0; } ;
typedef TYPE_1__ SSchedMsg ;
typedef TYPE_2__ SQInfo ;


 int dTrace (char*,TYPE_2__*) ;
 int queryQhandle ;
 int taosScheduleTask (int ,TYPE_1__*) ;
 int vnodeFreeQInfoInQueueImpl ;
 int vnodeIsQInfoValid (TYPE_2__*) ;

void vnodeFreeQInfoInQueue(void *param) {
  SQInfo *pQInfo = (SQInfo *)param;

  if (!vnodeIsQInfoValid(pQInfo)) return;

  pQInfo->killed = 1;

  dTrace("QInfo:%p set kill flag and add to queue, stop query ASAP", pQInfo);
  SSchedMsg schedMsg = {0};
  schedMsg.fp = vnodeFreeQInfoInQueueImpl;

  schedMsg.msg = ((void*)0);
  schedMsg.thandle = (void *)1;
  schedMsg.ahandle = param;
  taosScheduleTask(queryQhandle, &schedMsg);
}
