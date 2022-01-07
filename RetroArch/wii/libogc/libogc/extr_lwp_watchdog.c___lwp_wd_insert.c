
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int prev; } ;
struct TYPE_10__ {scalar_t__ fire; scalar_t__ state; TYPE_9__ node; int start; } ;
typedef TYPE_1__ wd_cntrl ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int lwp_queue ;


 scalar_t__ LWP_WD_INSERTED ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Flash (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__ __lwp_isr_in_progress () ;
 int __lwp_queue_insertI (int ,TYPE_9__*) ;
 int __lwp_wd_activate (TYPE_1__*) ;
 TYPE_1__* __lwp_wd_first (int *) ;
 TYPE_1__* __lwp_wd_next (TYPE_1__*) ;
 int __lwp_wd_settimer (TYPE_1__*) ;
 int _wd_sync_count ;
 scalar_t__ _wd_sync_level ;
 int printf (char*,TYPE_1__*,int ,scalar_t__) ;

void __lwp_wd_insert(lwp_queue *header,wd_cntrl *wd)
{
 u32 level;
 u64 fire;
 u32 isr_nest_level;
 wd_cntrl *after;



 isr_nest_level = __lwp_isr_in_progress();
 wd->state = LWP_WD_INSERTED;

 _wd_sync_count++;
restart:
 _CPU_ISR_Disable(level);
 fire = wd->fire;
 for(after=__lwp_wd_first(header);;after=__lwp_wd_next(after)) {
  if(fire==0 || !__lwp_wd_next(after)) break;
  if(fire<after->fire) break;

  _CPU_ISR_Flash(level);
  if(wd->state!=LWP_WD_INSERTED) goto exit_insert;
  if(_wd_sync_level>isr_nest_level) {
   _wd_sync_level = isr_nest_level;
   _CPU_ISR_Restore(level);
   goto restart;
  }
 }
 __lwp_wd_activate(wd);
 wd->fire = fire;
 __lwp_queue_insertI(after->node.prev,&wd->node);
 if(__lwp_wd_first(header)==wd) __lwp_wd_settimer(wd);

exit_insert:
 _wd_sync_level = isr_nest_level;
 _wd_sync_count--;
 _CPU_ISR_Restore(level);
 return;
}
