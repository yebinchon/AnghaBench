
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state; int node; } ;
typedef TYPE_1__ wd_cntrl ;
typedef int u32 ;
typedef int lwp_queue ;






 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __lwp_isr_in_progress () ;
 int __lwp_queue_extractI (int *) ;
 int __lwp_queue_isempty (int *) ;
 TYPE_1__* __lwp_wd_first (int *) ;
 TYPE_1__* __lwp_wd_next (TYPE_1__*) ;
 int __lwp_wd_settimer (TYPE_1__*) ;
 int _wd_sync_count ;
 int _wd_sync_level ;
 int printf (char*,TYPE_1__*) ;

u32 __lwp_wd_remove(lwp_queue *header,wd_cntrl *wd)
{
 u32 level;
 u32 prev_state;
 wd_cntrl *next;



 _CPU_ISR_Disable(level);
 prev_state = wd->state;
 switch(prev_state) {
  case 130:
   break;
  case 129:
   wd->state = 130;
   break;
  case 131:
  case 128:
   wd->state = 130;
   next = __lwp_wd_next(wd);
   if(_wd_sync_count) _wd_sync_level = __lwp_isr_in_progress();
   __lwp_queue_extractI(&wd->node);
   if(!__lwp_queue_isempty(header) && __lwp_wd_first(header)==next) __lwp_wd_settimer(next);
   break;
 }
 _CPU_ISR_Restore(level);
 return prev_state;
}
