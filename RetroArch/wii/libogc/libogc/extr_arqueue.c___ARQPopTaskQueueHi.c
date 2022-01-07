
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callback; int len; int aram_addr; int mram_addr; int dir; int state; } ;
typedef TYPE_1__ ARQRequest ;


 int ARQ_TASK_RUNNING ;
 int AR_StartDMA (int ,int ,int ,int ) ;
 int __ARQCallbackHi ;
 TYPE_1__* __ARQReqPendingHi ;
 int __ARQReqQueueHi ;
 scalar_t__ __lwp_queue_getI (int *) ;

__attribute__((used)) static __inline__ void __ARQPopTaskQueueHi()
{
 ARQRequest *req;

 req = (ARQRequest*)__lwp_queue_getI(&__ARQReqQueueHi);
 if(!req) return;

 req->state = ARQ_TASK_RUNNING;
 AR_StartDMA(req->dir,req->mram_addr,req->aram_addr,req->len);
 __ARQCallbackHi = req->callback;
 __ARQReqPendingHi = req;
}
