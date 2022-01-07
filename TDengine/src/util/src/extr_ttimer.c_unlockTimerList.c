
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lockedBy; } ;
typedef TYPE_1__ timer_list_t ;
typedef scalar_t__ int64_t ;


 int assert (int) ;
 scalar_t__ atomic_val_compare_exchange_64 (int *,scalar_t__,int ) ;
 scalar_t__ taosGetPthreadId () ;
 int tmrError (char*,scalar_t__) ;

__attribute__((used)) static void unlockTimerList(timer_list_t* list) {
  int64_t tid = taosGetPthreadId();
  if (atomic_val_compare_exchange_64(&(list->lockedBy), tid, 0) != tid) {
    assert(0);
    tmrError("%d trying to unlock a timer list not locked by current thread.", tid);
  }
}
