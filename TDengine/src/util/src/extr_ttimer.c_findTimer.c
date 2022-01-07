
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {uintptr_t id; struct TYPE_8__* mnext; } ;
typedef TYPE_1__ tmr_obj_t ;
struct TYPE_9__ {TYPE_1__* timers; } ;
typedef TYPE_2__ timer_list_t ;
struct TYPE_10__ {uintptr_t size; TYPE_2__* slots; } ;


 int lockTimerList (TYPE_2__*) ;
 int timerAddRef (TYPE_1__*) ;
 TYPE_4__ timerMap ;
 int unlockTimerList (TYPE_2__*) ;

__attribute__((used)) static tmr_obj_t* findTimer(uintptr_t id) {
  tmr_obj_t* timer = ((void*)0);
  if (id > 0) {
    uint32_t idx = (uint32_t)(id % timerMap.size);
    timer_list_t* list = timerMap.slots + idx;
    lockTimerList(list);
    for (timer = list->timers; timer != ((void*)0); timer = timer->mnext) {
      if (timer->id == id) {
        timerAddRef(timer);
        break;
      }
    }
    unlockTimerList(list);
  }
  return timer;
}
