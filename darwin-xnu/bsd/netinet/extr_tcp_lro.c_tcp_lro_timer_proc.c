
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ lro_timer_set ;
 int tcp_lro_flush_flows () ;
 int tcp_lro_lock ;

__attribute__((used)) static void
tcp_lro_timer_proc(void *arg1, void *arg2)
{
#pragma unused(arg1, arg2)

 lck_mtx_lock_spin(&tcp_lro_lock);
 lro_timer_set = 0;
 lck_mtx_unlock(&tcp_lro_lock);
 tcp_lro_flush_flows();
}
