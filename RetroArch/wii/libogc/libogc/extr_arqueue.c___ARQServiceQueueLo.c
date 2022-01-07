
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int mram_addr; int aram_addr; int dir; int callback; int state; } ;
typedef TYPE_1__ ARQRequest ;


 int ARQ_TASK_RUNNING ;
 int AR_StartDMA (int ,int ,int ,scalar_t__) ;
 int __ARQCallbackLo ;
 scalar_t__ __ARQChunkSize ;
 TYPE_1__* __ARQReqPendingLo ;
 int __ARQReqQueueLo ;
 scalar_t__ __lwp_queue_getI (int *) ;

__attribute__((used)) static void __ARQServiceQueueLo()
{
 ARQRequest *req;

 if(!__ARQReqPendingLo) {
  req = (ARQRequest*)__lwp_queue_getI(&__ARQReqQueueLo);
  __ARQReqPendingLo = req;
 }

 req = __ARQReqPendingLo;
 if(req) {
  req->state = ARQ_TASK_RUNNING;
  if(req->len<=__ARQChunkSize) {
   AR_StartDMA(req->dir,req->mram_addr,req->aram_addr,req->len);
   __ARQCallbackLo = __ARQReqPendingLo->callback;
  } else {
   AR_StartDMA(req->dir,req->mram_addr,req->aram_addr,__ARQChunkSize);
   __ARQReqPendingLo->len -= __ARQChunkSize;
   __ARQReqPendingLo->aram_addr += __ARQChunkSize;
   __ARQReqPendingLo->mram_addr += __ARQChunkSize;
  }
 }
}
