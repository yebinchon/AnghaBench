
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_7__ {scalar_t__ count; int wait_queue; } ;
typedef TYPE_2__ lwp_sema ;
struct TYPE_6__ {void* id; int * queue; void* ret_code; } ;
struct TYPE_8__ {TYPE_1__ wait; } ;
typedef TYPE_3__ lwp_cntrl ;


 void* LWP_SEMA_SUCCESSFUL ;
 void* LWP_SEMA_UNSATISFIED_NOWAIT ;
 int _CPU_ISR_Disable (void*) ;
 int _CPU_ISR_Restore (void*) ;
 int __lwp_threadqueue_csenter (int *) ;
 int __lwp_threadqueue_enqueue (int *,int ) ;
 TYPE_3__* _thr_executing ;

u32 __lwp_sema_seize(lwp_sema *sema,u32 id,u32 wait,u64 timeout)
{
 u32 level;
 lwp_cntrl *exec;

 exec = _thr_executing;
 exec->wait.ret_code = LWP_SEMA_SUCCESSFUL;

 _CPU_ISR_Disable(level);
 if(sema->count!=0) {
  --sema->count;
  _CPU_ISR_Restore(level);
  return LWP_SEMA_SUCCESSFUL;
 }

 if(!wait) {
  _CPU_ISR_Restore(level);
  exec->wait.ret_code = LWP_SEMA_UNSATISFIED_NOWAIT;
  return LWP_SEMA_UNSATISFIED_NOWAIT;
 }

 __lwp_threadqueue_csenter(&sema->wait_queue);
 exec->wait.queue = &sema->wait_queue;
 exec->wait.id = id;
 _CPU_ISR_Restore(level);

 __lwp_threadqueue_enqueue(&sema->wait_queue,timeout);
 return LWP_SEMA_SUCCESSFUL;
}
