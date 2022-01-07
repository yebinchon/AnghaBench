
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int * callback; scalar_t__ len; scalar_t__ aram_addr; scalar_t__ mram_addr; scalar_t__ dir; int state; int node; scalar_t__ prio; scalar_t__ owner; } ;
typedef TYPE_1__ ARQRequest ;
typedef int * ARQCallback ;


 scalar_t__ ARQ_PRIO_LO ;
 int ARQ_TASK_READY ;
 int ARQ_TASK_RUNNING ;
 int AR_StartDMA (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 int * __ARQCallbackDummy ;
 int * __ARQCallbackHi ;
 TYPE_1__* __ARQReqPendingHi ;
 int __ARQReqPendingLo ;
 int __ARQReqQueueHi ;
 int __ARQReqQueueLo ;
 int __ARQServiceQueueLo () ;
 int __lwp_queue_appendI (int *,int *) ;
 scalar_t__ __lwp_queue_getI (int *) ;

void ARQ_PostRequestAsync(ARQRequest *req,u32 owner,u32 dir,u32 prio,u32 aram_addr,u32 mram_addr,u32 len,ARQCallback cb)
{
 u32 level;
 ARQRequest *p;

 req->state = ARQ_TASK_READY;
 req->dir = dir;
 req->owner = owner;
 req->aram_addr = aram_addr;
 req->mram_addr = mram_addr;
 req->len = len;
 req->prio = prio;
 req->callback = (cb==((void*)0)) ? __ARQCallbackDummy : cb;

 _CPU_ISR_Disable(level);

 if(prio==ARQ_PRIO_LO) __lwp_queue_appendI(&__ARQReqQueueLo,&req->node);
 else __lwp_queue_appendI(&__ARQReqQueueHi,&req->node);

 if(!__ARQReqPendingLo && !__ARQReqPendingHi) {
  p = (ARQRequest*)__lwp_queue_getI(&__ARQReqQueueHi);
  if(p) {
   p->state = ARQ_TASK_RUNNING;
   AR_StartDMA(p->dir,p->mram_addr,p->aram_addr,p->len);
   __ARQCallbackHi = p->callback;
   __ARQReqPendingHi = p;
  }
  if(!__ARQReqPendingHi) __ARQServiceQueueLo();
 }
 _CPU_ISR_Restore(level);
}
