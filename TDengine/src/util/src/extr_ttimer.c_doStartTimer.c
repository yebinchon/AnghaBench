
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {uintptr_t id; int wheel; void* param; int fp; TYPE_2__* ctrl; int state; } ;
typedef TYPE_1__ tmr_obj_t ;
struct TYPE_10__ {int label; } ;
typedef TYPE_2__ tmr_ctrl_t ;
typedef int TAOS_TMR_CALLBACK ;


 int TIMER_STATE_WAITING ;
 int addTimer (TYPE_1__*) ;
 int addToExpired (TYPE_1__*) ;
 int addToWheel (TYPE_1__*,int) ;
 uintptr_t getNextTimerId () ;
 int tListLen (int ) ;
 int timerAddRef (TYPE_1__*) ;
 int tmrTrace (char const*,int ,uintptr_t,int ,void*) ;
 int wheels ;

__attribute__((used)) static uintptr_t doStartTimer(tmr_obj_t* timer, TAOS_TMR_CALLBACK fp, int mseconds, void* param, tmr_ctrl_t* ctrl) {
  uintptr_t id = getNextTimerId();
  timer->id = id;
  timer->state = TIMER_STATE_WAITING;
  timer->fp = fp;
  timer->param = param;
  timer->ctrl = ctrl;
  addTimer(timer);

  const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] started";
  tmrTrace(fmt, ctrl->label, timer->id, timer->fp, timer->param);

  if (mseconds == 0) {
    timer->wheel = tListLen(wheels);
    timerAddRef(timer);
    addToExpired(timer);
  } else {
    addToWheel(timer, mseconds);
  }


  return id;
}
