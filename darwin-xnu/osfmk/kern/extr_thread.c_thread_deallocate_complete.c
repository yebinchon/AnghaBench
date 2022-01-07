
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int task_t ;
struct io_stat_info {int dummy; } ;
struct TYPE_11__ {scalar_t__ ref_count; int state; scalar_t__ runq; scalar_t__ turnstile; scalar_t__ ith_voucher; scalar_t__ kernel_stack; scalar_t__ thread_magic; int mutex; scalar_t__ thread_io_stats; scalar_t__ t_threadledger; scalar_t__ t_ledger; int * uthread; int task; } ;


 scalar_t__ IPC_VOUCHER_NULL ;
 scalar_t__ PROCESSOR_NULL ;
 int TH_TERMINATE2 ;
 scalar_t__ TURNSTILE_NULL ;
 int assert (int) ;
 int assert_thread_magic (TYPE_1__*) ;
 int ipc_thread_terminate (TYPE_1__*) ;
 int ipc_voucher_release (scalar_t__) ;
 int kfree (scalar_t__,int) ;
 int kpc_thread_destroy (TYPE_1__*) ;
 int lck_mtx_destroy (int *,int *) ;
 int ledger_dereference (scalar_t__) ;
 int machine_thread_destroy (TYPE_1__*) ;
 int panic (char*) ;
 int proc_thread_qos_deallocate (TYPE_1__*) ;
 int stack_free (TYPE_1__*) ;
 int task_deallocate (int ) ;
 int thread_lck_grp ;
 scalar_t__ thread_owned_workloops_count (TYPE_1__*) ;
 int thread_zone ;
 int turnstile_deallocate (scalar_t__) ;
 int uthread_zone_free (void*) ;
 int zfree (int ,TYPE_1__*) ;

void
thread_deallocate_complete(
 thread_t thread)
{
 task_t task;

 assert_thread_magic(thread);

 assert(thread->ref_count == 0);

 assert(thread_owned_workloops_count(thread) == 0);

 if (!(thread->state & TH_TERMINATE2))
  panic("thread_deallocate: thread not properly terminated\n");

 assert(thread->runq == PROCESSOR_NULL);





 ipc_thread_terminate(thread);

 proc_thread_qos_deallocate(thread);

 task = thread->task;
 if (thread->t_ledger)
  ledger_dereference(thread->t_ledger);
 if (thread->t_threadledger)
  ledger_dereference(thread->t_threadledger);

 assert(thread->turnstile != TURNSTILE_NULL);
 if (thread->turnstile)
  turnstile_deallocate(thread->turnstile);

 if (IPC_VOUCHER_NULL != thread->ith_voucher)
  ipc_voucher_release(thread->ith_voucher);

 if (thread->thread_io_stats)
  kfree(thread->thread_io_stats, sizeof(struct io_stat_info));

 if (thread->kernel_stack != 0)
  stack_free(thread);

 lck_mtx_destroy(&thread->mutex, &thread_lck_grp);
 machine_thread_destroy(thread);

 task_deallocate(task);






 zfree(thread_zone, thread);
}
