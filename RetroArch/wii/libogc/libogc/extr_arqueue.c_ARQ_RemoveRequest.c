
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int node; } ;
typedef TYPE_1__ ARQRequest ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __ARQCallbackLo ;
 TYPE_1__* __ARQReqPendingLo ;
 int __lwp_queue_extractI (int *) ;

void ARQ_RemoveRequest(ARQRequest *req)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __lwp_queue_extractI(&req->node);
 if(__ARQReqPendingLo && __ARQReqPendingLo==req && __ARQCallbackLo==((void*)0)) __ARQReqPendingLo = ((void*)0);
 _CPU_ISR_Restore(level);
}
