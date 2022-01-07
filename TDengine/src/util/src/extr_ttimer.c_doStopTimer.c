
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {scalar_t__ executedBy; int param; int fp; int id; TYPE_1__* ctrl; int state; } ;
typedef TYPE_2__ tmr_obj_t ;
struct TYPE_5__ {int label; } ;


 scalar_t__ TIMER_STATE_EXPIRED ;
 scalar_t__ TIMER_STATE_STOPPED ;
 scalar_t__ TIMER_STATE_WAITING ;
 int assert (int) ;
 scalar_t__ atomic_load_8 (int *) ;
 scalar_t__ removeFromWheel (TYPE_2__*) ;
 int removeTimer (int ) ;
 int sched_yield () ;
 scalar_t__ taosGetPthreadId () ;
 int tmrTrace (char const*,int ,int ,int ,int ) ;

__attribute__((used)) static bool doStopTimer(tmr_obj_t* timer, uint8_t state) {
  bool reusable = 0;

  if (state == TIMER_STATE_WAITING) {
    if (removeFromWheel(timer)) {
      removeTimer(timer->id);


      reusable = 1;
    }
    const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] is cancelled.";
    tmrTrace(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);
  } else if (state != TIMER_STATE_EXPIRED) {

  } else if (timer->executedBy == taosGetPthreadId()) {



  } else {
    assert(timer->executedBy != taosGetPthreadId());

    const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] fired, waiting...";
    tmrTrace(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);

    for (int i = 1; atomic_load_8(&timer->state) != TIMER_STATE_STOPPED; i++) {
      if (i % 1000 == 0) {
        sched_yield();
      }
    }

    fmt = "%s timer[id=%lld, fp=%p, param=%p] stopped.";
    tmrTrace(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);
  }

  return reusable;
}
