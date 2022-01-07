
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {scalar_t__ id; int param; int (* fp ) (int ,int ) ;TYPE_1__* ctrl; int state; int executedBy; } ;
typedef TYPE_2__ tmr_obj_t ;
typedef int tmr_h ;
struct TYPE_4__ {int label; } ;


 int TIMER_STATE_EXPIRED ;
 int TIMER_STATE_STOPPED ;
 scalar_t__ TIMER_STATE_WAITING ;
 int atomic_store_8 (int *,int ) ;
 scalar_t__ atomic_val_compare_exchange_8 (int *,scalar_t__,int ) ;
 int removeTimer (scalar_t__) ;
 int stub1 (int ,int ) ;
 int taosGetPthreadId () ;
 int timerDecRef (TYPE_2__*) ;
 int tmrTrace (char const*,int ,scalar_t__,int (*) (int ,int ),int ) ;

__attribute__((used)) static void processExpiredTimer(void* handle, void* arg) {
  tmr_obj_t* timer = (tmr_obj_t*)handle;
  timer->executedBy = taosGetPthreadId();
  uint8_t state = atomic_val_compare_exchange_8(&timer->state, TIMER_STATE_WAITING, TIMER_STATE_EXPIRED);
  if (state == TIMER_STATE_WAITING) {
    const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] execution start.";
    tmrTrace(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);

    (*timer->fp)(timer->param, (tmr_h)timer->id);
    atomic_store_8(&timer->state, TIMER_STATE_STOPPED);

    fmt = "%s timer[id=%lld, fp=%p, param=%p] execution end.";
    tmrTrace(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);
  }
  removeTimer(timer->id);
  timerDecRef(timer);
}
