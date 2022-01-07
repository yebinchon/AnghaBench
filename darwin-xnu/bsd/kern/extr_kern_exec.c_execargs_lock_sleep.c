
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;


 int LCK_SLEEP_DEFAULT ;
 int THREAD_INTERRUPTIBLE ;
 int execargs_cache_lock ;
 int execargs_free_count ;
 int lck_mtx_sleep (int ,int ,int *,int ) ;

__attribute__((used)) static wait_result_t
execargs_lock_sleep(void) {
 return(lck_mtx_sleep(execargs_cache_lock, LCK_SLEEP_DEFAULT, &execargs_free_count, THREAD_INTERRUPTIBLE));
}
