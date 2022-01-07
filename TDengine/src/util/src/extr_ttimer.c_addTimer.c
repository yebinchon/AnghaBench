
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int id; struct TYPE_8__* mnext; int wheel; } ;
typedef TYPE_1__ tmr_obj_t ;
struct TYPE_9__ {TYPE_1__* timers; } ;
typedef TYPE_2__ timer_list_t ;
struct TYPE_10__ {int size; TYPE_2__* slots; } ;


 int lockTimerList (TYPE_2__*) ;
 int tListLen (int ) ;
 int timerAddRef (TYPE_1__*) ;
 TYPE_4__ timerMap ;
 int unlockTimerList (TYPE_2__*) ;
 int wheels ;

__attribute__((used)) static void addTimer(tmr_obj_t* timer) {
  timerAddRef(timer);
  timer->wheel = tListLen(wheels);

  uint32_t idx = (uint32_t)(timer->id % timerMap.size);
  timer_list_t* list = timerMap.slots + idx;

  lockTimerList(list);
  timer->mnext = list->timers;
  list->timers = timer;
  unlockTimerList(list);
}
