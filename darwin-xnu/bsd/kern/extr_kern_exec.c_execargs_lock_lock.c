
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execargs_cache_lock ;
 int lck_mtx_lock_spin (int ) ;

__attribute__((used)) static void
execargs_lock_lock(void) {
 lck_mtx_lock_spin(execargs_cache_lock);
}
