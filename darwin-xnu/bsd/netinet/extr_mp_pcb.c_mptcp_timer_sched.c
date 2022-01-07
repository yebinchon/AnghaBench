
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int mp_sched_timeout () ;
 int mp_ticking ;
 int mp_timeout_lock ;

void
mptcp_timer_sched(void)
{
 lck_mtx_lock_spin(&mp_timeout_lock);
 mp_ticking = TRUE;
 mp_sched_timeout();
 lck_mtx_unlock(&mp_timeout_lock);
}
