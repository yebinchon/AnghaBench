
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {uintptr_t id; struct TYPE_7__* mnext; } ;
typedef TYPE_1__ tmr_obj_t ;
struct TYPE_8__ {TYPE_1__* timers; } ;
typedef TYPE_2__ timer_list_t ;
struct TYPE_9__ {uintptr_t size; TYPE_2__* slots; } ;


 int lockTimerList (TYPE_2__*) ;
 int timerDecRef (TYPE_1__*) ;
 TYPE_4__ timerMap ;
 int unlockTimerList (TYPE_2__*) ;

__attribute__((used)) static void removeTimer(uintptr_t id) {
  tmr_obj_t* prev = ((void*)0);
  uint32_t idx = (uint32_t)(id % timerMap.size);
  timer_list_t* list = timerMap.slots + idx;
  lockTimerList(list);
  for (tmr_obj_t* p = list->timers; p != ((void*)0); p = p->mnext) {
    if (p->id == id) {
      if (prev == ((void*)0)) {
        list->timers = p->mnext;
      } else {
        prev->mnext = p->mnext;
      }
      timerDecRef(p);
      break;
    }
    prev = p;
  }
  unlockTimerList(list);
}
