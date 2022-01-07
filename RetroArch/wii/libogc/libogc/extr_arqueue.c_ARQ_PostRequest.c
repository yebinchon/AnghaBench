
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ ARQRequest ;


 int ARQ_PostRequestAsync (TYPE_1__*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ ARQ_TASK_FINISHED ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __ARQCallbackSync ;
 int __ARQSyncQueue ;

void ARQ_PostRequest(ARQRequest *req,u32 owner,u32 dir,u32 prio,u32 aram_addr,u32 mram_addr,u32 len)
{
 u32 level;

 ARQ_PostRequestAsync(req,owner,dir,prio,aram_addr,mram_addr,len,__ARQCallbackSync);

 _CPU_ISR_Disable(level);
 while(req->state!=ARQ_TASK_FINISHED) {
  LWP_ThreadSleep(__ARQSyncQueue);
 }
 _CPU_ISR_Restore(level);
}
