
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int thread_t ;
struct workqueue {int wq_nthreads; int wq_thnewlist; int wq_thidlecount; int wq_creations; } ;
struct uthread {int uu_workq_stackaddr; } ;
typedef TYPE_1__* proc_t ;
typedef int mach_vm_offset_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_7__ {scalar_t__ (* workq_create_threadstack ) (TYPE_1__*,int ,int *) ;int (* workq_destroy_threadstack ) (TYPE_1__*,int ,int ) ;} ;
struct TYPE_6__ {int task; } ;


 int DBG_FUNC_NONE ;
 scalar_t__ KERN_SUCCESS ;
 int TAILQ_INSERT_TAIL (int *,struct uthread*,int ) ;
 int TRACE_wq_thread_create ;
 int TRACE_wq_thread_create_failed ;
 int WQ_TRACE_WQ (int,struct workqueue*,scalar_t__,int,int ,int ) ;
 struct uthread* get_bsdthread_info (int ) ;
 int get_task_map (int ) ;
 TYPE_5__* pthread_functions ;
 scalar_t__ stub1 (TYPE_1__*,int ,int *) ;
 int stub2 (TYPE_1__*,int ,int ) ;
 scalar_t__ thread_create_workq_waiting (int ,int ,int *) ;
 int uu_workq_entry ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_unlock (struct workqueue*) ;
 int workq_unpark_continue ;

__attribute__((used)) static bool
workq_add_new_idle_thread(proc_t p, struct workqueue *wq)
{
 mach_vm_offset_t th_stackaddr;
 kern_return_t kret;
 thread_t th;

 wq->wq_nthreads++;

 workq_unlock(wq);

 vm_map_t vmap = get_task_map(p->task);

 kret = pthread_functions->workq_create_threadstack(p, vmap, &th_stackaddr);
 if (kret != KERN_SUCCESS) {
  WQ_TRACE_WQ(TRACE_wq_thread_create_failed | DBG_FUNC_NONE, wq,
    kret, 1, 0, 0);
  goto out;
 }

 kret = thread_create_workq_waiting(p->task, workq_unpark_continue, &th);
 if (kret != KERN_SUCCESS) {
  WQ_TRACE_WQ(TRACE_wq_thread_create_failed | DBG_FUNC_NONE, wq,
    kret, 0, 0, 0);
  pthread_functions->workq_destroy_threadstack(p, vmap, th_stackaddr);
  goto out;
 }




 struct uthread *uth = get_bsdthread_info(th);

 wq->wq_creations++;
 wq->wq_thidlecount++;
 uth->uu_workq_stackaddr = th_stackaddr;
 TAILQ_INSERT_TAIL(&wq->wq_thnewlist, uth, uu_workq_entry);

 WQ_TRACE_WQ(TRACE_wq_thread_create | DBG_FUNC_NONE, wq, 0, 0, 0, 0);
 return 1;

out:
 workq_lock_spin(wq);





 wq->wq_nthreads--;
 return 0;
}
