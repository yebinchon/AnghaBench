
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ max_cnt; } ;
struct TYPE_5__ {scalar_t__ count; TYPE_1__ attrs; int wait_queue; } ;
typedef TYPE_2__ lwp_sema ;
typedef int lwp_cntrl ;


 int LWP_SEMA_MAXCNT_EXCEEDED ;
 int LWP_SEMA_SUCCESSFUL ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __lwp_threadqueue_dequeue (int *) ;

u32 __lwp_sema_surrender(lwp_sema *sema,u32 id)
{
 u32 level,ret;
 lwp_cntrl *thethread;

 ret = LWP_SEMA_SUCCESSFUL;
 if((thethread=__lwp_threadqueue_dequeue(&sema->wait_queue))) return ret;
 else {
  _CPU_ISR_Disable(level);
  if(sema->count<=sema->attrs.max_cnt)
   ++sema->count;
  else
   ret = LWP_SEMA_MAXCNT_EXCEEDED;
  _CPU_ISR_Restore(level);
 }
 return ret;
}
