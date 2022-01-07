
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int mp_garbage_collecting ;
 int mp_sched_timeout () ;
 int mp_timeout_lock ;

void
mp_gc_sched(void)
{
 lck_mtx_lock_spin(&mp_timeout_lock);
 mp_garbage_collecting = TRUE;
 mp_sched_timeout();
 lck_mtx_unlock(&mp_timeout_lock);
}
