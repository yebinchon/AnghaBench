
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lockedBy; } ;
typedef TYPE_1__ timer_list_t ;
typedef int int64_t ;


 scalar_t__ atomic_val_compare_exchange_64 (int *,int ,int ) ;
 int sched_yield () ;
 int taosGetPthreadId () ;

__attribute__((used)) static void lockTimerList(timer_list_t* list) {
  int64_t tid = taosGetPthreadId();
  int i = 0;
  while (atomic_val_compare_exchange_64(&(list->lockedBy), 0, tid) != 0) {
    if (++i % 1000 == 0) {
      sched_yield();
    }
  }
}
