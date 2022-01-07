
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_waitq; scalar_t__ ts_inheritor; int ts_inheritor_links; int ts_inheritor_queue; } ;
typedef int boolean_t ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;
 int PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ;
 int TSU_NO_INHERITOR ;
 int TSU_NO_PRI_CHANGE_NEEDED ;
 int TSU_TURNSTILE_ARG ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int TURNSTILE_REMOVED_FROM_TURNSTILE_HEAP ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct turnstile*) ;
 scalar_t__ priority_queue_remove (int *,int *,int ) ;
 int turnstile_recompute_priority_locked (struct turnstile*) ;
 int turnstile_stats_update (int,int,struct turnstile*) ;
 int waitq_lock (int *) ;
 int waitq_unlock (int *) ;

__attribute__((used)) static boolean_t
turnstile_remove_turnstile_promotion(
 struct turnstile *dst_turnstile,
 struct turnstile *src_turnstile)
{
 boolean_t needs_update = FALSE;


 waitq_lock(&dst_turnstile->ts_waitq);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_REMOVED_FROM_TURNSTILE_HEAP))) | DBG_FUNC_NONE,
  VM_KERNEL_UNSLIDE_OR_PERM(dst_turnstile),
  VM_KERNEL_UNSLIDE_OR_PERM(src_turnstile),
  0, 0, 0);

 if (priority_queue_remove(&dst_turnstile->ts_inheritor_queue,
   &src_turnstile->ts_inheritor_links,
   PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {

  needs_update = turnstile_recompute_priority_locked(dst_turnstile);
 }


 if (!needs_update) {
  turnstile_stats_update(1,
   (dst_turnstile->ts_inheritor ? TSU_NO_PRI_CHANGE_NEEDED : TSU_NO_INHERITOR) |
   TSU_TURNSTILE_ARG, src_turnstile);
 }

 waitq_unlock(&dst_turnstile->ts_waitq);
 return needs_update;
}
