
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {uintptr_t id; int param; int fp; TYPE_1__* ctrl; struct TYPE_7__* next; } ;
typedef TYPE_2__ tmr_obj_t ;
struct TYPE_8__ {int * thandle; TYPE_2__* ahandle; int tfp; int * fp; } ;
struct TYPE_6__ {int label; } ;
typedef TYPE_3__ SSchedMsg ;


 int processExpiredTimer ;
 int taosScheduleTask (int ,TYPE_3__*) ;
 int tmrQhandle ;
 int tmrTrace (char const*,uintptr_t,...) ;

__attribute__((used)) static void addToExpired(tmr_obj_t* head) {
  const char* fmt = "%s adding expired timer[id=%lld, fp=%p, param=%p] to queue.";

  while (head != ((void*)0)) {
    uintptr_t id = head->id;
    tmr_obj_t* next = head->next;
    tmrTrace(fmt, head->ctrl->label, id, head->fp, head->param);

    SSchedMsg schedMsg;
    schedMsg.fp = ((void*)0);
    schedMsg.tfp = processExpiredTimer;
    schedMsg.ahandle = head;
    schedMsg.thandle = ((void*)0);
    taosScheduleTask(tmrQhandle, &schedMsg);

    tmrTrace("timer[id=%lld] has been added to queue.", id);
    head = next;
  }
}
