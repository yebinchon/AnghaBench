
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARQ_DEF_CHUNK_SIZE ;
 int AR_RegisterCallback (int ) ;
 int LWP_InitQueue (int *) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __ARInterruptServiceRoutine ;
 int * __ARQCallbackHi ;
 int * __ARQCallbackLo ;
 int __ARQChunkSize ;
 int __ARQInitFlag ;
 int * __ARQReqPendingHi ;
 int * __ARQReqPendingLo ;
 int __ARQReqQueueHi ;
 int __ARQReqQueueLo ;
 int __ARQSyncQueue ;
 int __lwp_queue_init_empty (int *) ;

void ARQ_Init()
{
 u32 level;
 if(__ARQInitFlag) return;

 _CPU_ISR_Disable(level);

 __ARQReqPendingLo = ((void*)0);
 __ARQReqPendingHi = ((void*)0);
 __ARQCallbackLo = ((void*)0);
 __ARQCallbackHi = ((void*)0);

 __ARQChunkSize = ARQ_DEF_CHUNK_SIZE;

 LWP_InitQueue(&__ARQSyncQueue);

 __lwp_queue_init_empty(&__ARQReqQueueLo);
 __lwp_queue_init_empty(&__ARQReqQueueHi);

 AR_RegisterCallback(__ARInterruptServiceRoutine);

 __ARQInitFlag = 1;
 _CPU_ISR_Restore(level);
}
