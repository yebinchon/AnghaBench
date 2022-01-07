
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execargs_cache_lock ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static void
execargs_lock_unlock(void) {
 lck_mtx_unlock(execargs_cache_lock);
}
