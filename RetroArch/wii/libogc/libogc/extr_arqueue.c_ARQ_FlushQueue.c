
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __ARQCallbackLo ;
 int * __ARQReqPendingLo ;
 int __ARQReqQueueHi ;
 int __ARQReqQueueLo ;
 int __lwp_queue_init_empty (int *) ;

void ARQ_FlushQueue()
{
 u32 level;

 _CPU_ISR_Disable(level);

 __lwp_queue_init_empty(&__ARQReqQueueLo);
 __lwp_queue_init_empty(&__ARQReqQueueHi);
 if(!__ARQCallbackLo) __ARQReqPendingLo = ((void*)0);

 _CPU_ISR_Restore(level);
}
