
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;
typedef scalar_t__ cothread_t ;


 int * co_running ;
 int swapcontext (int *,int *) ;

void co_switch(cothread_t cothread) {
  ucontext_t *old_thread = co_running;
  co_running = (ucontext_t*)cothread;
  swapcontext(old_thread, co_running);
}
