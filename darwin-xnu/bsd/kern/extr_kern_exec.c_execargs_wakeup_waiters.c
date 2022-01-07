
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execargs_free_count ;
 int thread_wakeup (int *) ;

__attribute__((used)) static void
execargs_wakeup_waiters(void) {
 thread_wakeup(&execargs_free_count);
}
