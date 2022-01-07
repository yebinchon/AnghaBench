
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ tmr_obj_t ;
typedef int tmr_h ;


 int TIMER_STATE_CANCELED ;
 scalar_t__ TIMER_STATE_WAITING ;
 scalar_t__ atomic_val_compare_exchange_8 (int *,scalar_t__,int ) ;
 int doStopTimer (TYPE_1__*,scalar_t__) ;
 TYPE_1__* findTimer (uintptr_t) ;
 int timerDecRef (TYPE_1__*) ;
 int tmrTrace (char*,uintptr_t) ;

bool taosTmrStop(tmr_h timerId) {
  uintptr_t id = (uintptr_t)timerId;

  tmr_obj_t* timer = findTimer(id);
  if (timer == ((void*)0)) {
    tmrTrace("timer[id=%lld] does not exist", id);
    return 0;
  }

  uint8_t state = atomic_val_compare_exchange_8(&timer->state, TIMER_STATE_WAITING, TIMER_STATE_CANCELED);
  doStopTimer(timer, state);
  timerDecRef(timer);

  return state == TIMER_STATE_WAITING;
}
