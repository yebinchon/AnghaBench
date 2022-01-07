
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int ASYNC ;
 int CPUMASK_ALL ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DECR_TIMER_RESCAN ;
 int FALSE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int MAX (int ,scalar_t__) ;
 int TRUE ;
 scalar_t__ mach_absolute_time () ;
 int ml_timer_eager_evaluation_max ;
 int ml_timer_eager_evaluations ;
 int ml_timer_evaluation_in_progress ;
 int ml_timer_evaluation_slock ;
 int mp_cpus_call (int ,int ,int ,int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_call_delayed_timer_rescan_all () ;
 int timer_queue_expire_rescan ;

void ml_timer_evaluate(void) {
 KERNEL_DEBUG_CONSTANT(DECR_TIMER_RESCAN|DBG_FUNC_START, 0, 0, 0, 0, 0);

 uint64_t te_end, te_start = mach_absolute_time();
 simple_lock(&ml_timer_evaluation_slock);
 ml_timer_evaluation_in_progress = TRUE;
 thread_call_delayed_timer_rescan_all();
 mp_cpus_call(CPUMASK_ALL, ASYNC, timer_queue_expire_rescan, ((void*)0));
 ml_timer_evaluation_in_progress = FALSE;
 ml_timer_eager_evaluations++;
 te_end = mach_absolute_time();
 ml_timer_eager_evaluation_max = MAX(ml_timer_eager_evaluation_max, (te_end - te_start));
 simple_unlock(&ml_timer_evaluation_slock);

 KERNEL_DEBUG_CONSTANT(DECR_TIMER_RESCAN|DBG_FUNC_END, 0, 0, 0, 0, 0);
}
