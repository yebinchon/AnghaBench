
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int thread_t ;
typedef int thread_continue_t ;
typedef TYPE_2__* thread_call_t ;
typedef int thread_call_data_t ;
typedef int spl_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_4__ {int q_link; } ;
struct TYPE_5__ {TYPE_1__ tc_call; } ;


 scalar_t__ BASEPRI_PREEMPT_HIGH ;
 int FALSE ;
 size_t INTERNAL_CALL_COUNT ;
 scalar_t__ KERN_SUCCESS ;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int SYNC_POLICY_DISABLE_IRQ ;
 int SYNC_POLICY_FIFO ;
 int THREAD_CALL_DEALLOC_INTERVAL_NS ;
 size_t THREAD_CALL_INDEX_MAX ;
 int TRUE ;
 int Z_CALLERACCT ;
 int Z_NOENCRYPT ;
 int daemon_waitq ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 int enqueue_tail (int *,int *) ;
 TYPE_2__* internal_call_storage ;
 scalar_t__ kernel_thread_start_priority (int ,int *,scalar_t__,int *) ;
 int lck_grp_init (int *,char*,int ) ;
 int lck_mtx_init (int *,int *,int ) ;
 int nanotime_to_absolutetime (int ,int ,int *) ;
 int panic (char*) ;
 int queue_init (int *) ;
 scalar_t__ thread_call_daemon ;
 int thread_call_daemon_awake ;
 int thread_call_dealloc_interval_abs ;
 int thread_call_group_setup (int *) ;
 int * thread_call_groups ;
 int thread_call_internal_queue ;
 int thread_call_internal_queue_count ;
 int thread_call_lck_grp ;
 int thread_call_lock_data ;
 int thread_call_zone ;
 int thread_deallocate (int ) ;
 int waitq_init (int *,int) ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
thread_call_initialize(void)
{
 int tc_size = sizeof (thread_call_data_t);
 thread_call_zone = zinit(tc_size, 4096 * tc_size, 16 * tc_size, "thread_call");
 zone_change(thread_call_zone, Z_CALLERACCT, FALSE);
 zone_change(thread_call_zone, Z_NOENCRYPT, TRUE);

 lck_grp_init(&thread_call_lck_grp, "thread_call", LCK_GRP_ATTR_NULL);
 lck_mtx_init(&thread_call_lock_data, &thread_call_lck_grp, LCK_ATTR_NULL);

 nanotime_to_absolutetime(0, THREAD_CALL_DEALLOC_INTERVAL_NS, &thread_call_dealloc_interval_abs);
 waitq_init(&daemon_waitq, SYNC_POLICY_DISABLE_IRQ | SYNC_POLICY_FIFO);

 for (uint32_t i = 0; i < THREAD_CALL_INDEX_MAX; i++)
  thread_call_group_setup(&thread_call_groups[i]);

 spl_t s = disable_ints_and_lock();

 queue_init(&thread_call_internal_queue);
 for (
   thread_call_t call = internal_call_storage;
   call < &internal_call_storage[INTERNAL_CALL_COUNT];
   call++) {

  enqueue_tail(&thread_call_internal_queue, &call->tc_call.q_link);
  thread_call_internal_queue_count++;
 }

 thread_call_daemon_awake = TRUE;

 enable_ints_and_unlock(s);

 thread_t thread;
 kern_return_t result;

 result = kernel_thread_start_priority((thread_continue_t)thread_call_daemon,
                                       ((void*)0), BASEPRI_PREEMPT_HIGH + 1, &thread);
 if (result != KERN_SUCCESS)
  panic("thread_call_initialize");

 thread_deallocate(thread);
}
