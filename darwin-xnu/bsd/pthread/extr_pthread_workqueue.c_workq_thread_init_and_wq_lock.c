
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int task_t ;
struct uthread {scalar_t__ uu_workq_stackaddr; int uu_workq_thport; int uu_workq_pri; int uu_workq_flags; } ;
typedef int event_t ;


 int MACH_PORT_NULL ;
 int THREAD_QOS_LEGACY ;
 int THREAD_TAG_PTHREAD ;
 int THREAD_TAG_WORKQUEUE ;
 int UT_WORKQ_NEW ;
 int WORKQ_POLICY_INIT (int ) ;
 int get_bsdtask_info (int ) ;
 struct uthread* get_bsdthread_info (int ) ;
 int proc_get_wqptr_fast (int ) ;
 int thread_reset_workq_qos (int ,int ) ;
 int thread_set_tag (int ,int) ;
 int workq_lock_spin (int ) ;
 int workq_parked_wait_event (struct uthread*) ;

event_t
workq_thread_init_and_wq_lock(task_t task, thread_t th)
{
 struct uthread *uth = get_bsdthread_info(th);

 uth->uu_workq_flags = UT_WORKQ_NEW;
 uth->uu_workq_pri = WORKQ_POLICY_INIT(THREAD_QOS_LEGACY);
 uth->uu_workq_thport = MACH_PORT_NULL;
 uth->uu_workq_stackaddr = 0;

 thread_set_tag(th, THREAD_TAG_PTHREAD | THREAD_TAG_WORKQUEUE);
 thread_reset_workq_qos(th, THREAD_QOS_LEGACY);

 workq_lock_spin(proc_get_wqptr_fast(get_bsdtask_info(task)));
 return workq_parked_wait_event(uth);
}
