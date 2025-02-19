
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_16__ {int max_msgsize; scalar_t__ num_pendingmsgs; scalar_t__ max_pendingmsgs; int wait_queue; } ;
typedef TYPE_3__ mq_cntrl ;
struct TYPE_14__ {int size; void* buffer; } ;
struct TYPE_17__ {int prio; TYPE_1__ contents; } ;
typedef TYPE_4__ mq_buffercntrl ;
struct TYPE_15__ {int cnt; int id; void* ret_arg_1; void* ret_arg; int * queue; } ;
struct TYPE_18__ {TYPE_2__ wait; } ;
typedef TYPE_5__ lwp_cntrl ;


 int LWP_MQ_STATUS_INVALID_SIZE ;
 int LWP_MQ_STATUS_SUCCESSFUL ;
 int LWP_MQ_STATUS_TOO_MANY ;
 int LWP_MQ_STATUS_UNSATISFIED ;
 int LWP_MQ_STATUS_UNSATISFIED_WAIT ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 scalar_t__ __lwp_isr_in_progress () ;
 int __lwp_threadqueue_csenter (int *) ;
 TYPE_5__* __lwp_threadqueue_dequeue (int *) ;
 int __lwp_threadqueue_enqueue (int *,int ) ;
 TYPE_4__* __lwpmq_allocate_msg (TYPE_3__*) ;
 int __lwpmq_buffer_copy (void*,void*,int) ;
 int __lwpmq_msg_insert (TYPE_3__*,TYPE_4__*,int) ;
 TYPE_5__* _thr_executing ;
 int printf (char*,TYPE_3__*,void*,int,int,int,int) ;

u32 __lwpmq_submit(mq_cntrl *mqueue,u32 id,void *buffer,u32 size,u32 type,u32 wait,u64 timeout)
{
 u32 level;
 lwp_cntrl *thread;
 mq_buffercntrl *msg;




 if(size>mqueue->max_msgsize)
  return LWP_MQ_STATUS_INVALID_SIZE;

 if(mqueue->num_pendingmsgs==0) {
  thread = __lwp_threadqueue_dequeue(&mqueue->wait_queue);
  if(thread) {
   __lwpmq_buffer_copy(thread->wait.ret_arg,buffer,size);
   *(u32*)thread->wait.ret_arg_1 = size;
   thread->wait.cnt = type;
   return LWP_MQ_STATUS_SUCCESSFUL;
  }
 }

 if(mqueue->num_pendingmsgs<mqueue->max_pendingmsgs) {
  msg = __lwpmq_allocate_msg(mqueue);
  if(!msg) return LWP_MQ_STATUS_UNSATISFIED;

  __lwpmq_buffer_copy(msg->contents.buffer,buffer,size);
  msg->contents.size = size;
  msg->prio = type;
  __lwpmq_msg_insert(mqueue,msg,type);
  return LWP_MQ_STATUS_SUCCESSFUL;
 }

 if(!wait) return LWP_MQ_STATUS_TOO_MANY;
 if(__lwp_isr_in_progress()) return LWP_MQ_STATUS_UNSATISFIED;

 {
  lwp_cntrl *exec = _thr_executing;

  _CPU_ISR_Disable(level);
  __lwp_threadqueue_csenter(&mqueue->wait_queue);
  exec->wait.queue = &mqueue->wait_queue;
  exec->wait.id = id;
  exec->wait.ret_arg = (void*)buffer;
  exec->wait.ret_arg_1 = (void*)size;
  exec->wait.cnt = type;
  _CPU_ISR_Restore(level);

  __lwp_threadqueue_enqueue(&mqueue->wait_queue,timeout);
 }
 return LWP_MQ_STATUS_UNSATISFIED_WAIT;
}
