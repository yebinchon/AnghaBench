
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__ node; } ;
typedef TYPE_1__ sys_resetinfo ;
typedef TYPE_2__ lwp_node ;
struct TYPE_8__ {TYPE_2__* first; } ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_queue_extractI (TYPE_2__*) ;
 TYPE_3__ sys_reset_func_queue ;

void SYS_UnregisterResetFunc(sys_resetinfo *info) {
 u32 level;
 lwp_node *n;

 _CPU_ISR_Disable(level);
 for (n = sys_reset_func_queue.first; n->next; n = n->next) {
  if (n == &info->node) {
   __lwp_queue_extractI(n);
   break;
  }
 }
 _CPU_ISR_Restore(level);
}
