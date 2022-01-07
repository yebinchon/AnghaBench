
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int prev; int * next; } ;
struct TYPE_6__ {scalar_t__ prio; TYPE_4__ node; } ;
typedef TYPE_1__ sys_resetinfo ;
struct TYPE_7__ {scalar_t__ first; } ;
typedef TYPE_2__ lwp_queue ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_queue_insertI (int ,TYPE_4__*) ;
 TYPE_2__ sys_reset_func_queue ;

void SYS_RegisterResetFunc(sys_resetinfo *info)
{
 u32 level;
 sys_resetinfo *after;
 lwp_queue *header = &sys_reset_func_queue;

 _CPU_ISR_Disable(level);
 for(after=(sys_resetinfo*)header->first;after->node.next!=((void*)0) && info->prio>=after->prio;after=(sys_resetinfo*)after->node.next);
 __lwp_queue_insertI(after->node.prev,&info->node);
 _CPU_ISR_Restore(level);
}
