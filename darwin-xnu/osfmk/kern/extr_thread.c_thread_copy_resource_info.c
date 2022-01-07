
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int * thread_io_stats; int t_threadledger; int syscalls_mach; int syscalls_unix; int vtimer_qos_save; int vtimer_rlim_save; int vtimer_prof_save; int vtimer_user_save; int runnable_timer; int system_timer_save; int system_timer; int user_timer_save; int user_timer; int precise_user_kernel_time; int ps_switch; int p_switch; int c_switch; } ;


 int ledger_rollup (int ,int ) ;

void
thread_copy_resource_info(
 thread_t dst_thread,
 thread_t src_thread)
{
 dst_thread->c_switch = src_thread->c_switch;
 dst_thread->p_switch = src_thread->p_switch;
 dst_thread->ps_switch = src_thread->ps_switch;
 dst_thread->precise_user_kernel_time = src_thread->precise_user_kernel_time;
 dst_thread->user_timer = src_thread->user_timer;
 dst_thread->user_timer_save = src_thread->user_timer_save;
 dst_thread->system_timer = src_thread->system_timer;
 dst_thread->system_timer_save = src_thread->system_timer_save;
 dst_thread->runnable_timer = src_thread->runnable_timer;
 dst_thread->vtimer_user_save = src_thread->vtimer_user_save;
 dst_thread->vtimer_prof_save = src_thread->vtimer_prof_save;
 dst_thread->vtimer_rlim_save = src_thread->vtimer_rlim_save;
 dst_thread->vtimer_qos_save = src_thread->vtimer_qos_save;
 dst_thread->syscalls_unix = src_thread->syscalls_unix;
 dst_thread->syscalls_mach = src_thread->syscalls_mach;
 ledger_rollup(dst_thread->t_threadledger, src_thread->t_threadledger);
 *dst_thread->thread_io_stats = *src_thread->thread_io_stats;
}
