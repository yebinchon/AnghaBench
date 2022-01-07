
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_priority; int ts_inheritor_links; int ts_inheritor_queue; } ;
typedef int boolean_t ;


 int DBG_FUNC_NONE ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int,int,int ) ;
 int TURNSTILE_CODE (int ,int ) ;
 int TURNSTILE_HEAP_OPERATIONS ;
 int TURNSTILE_MOVED_IN_TURNSTILE_HEAP ;
 int VM_KERNEL_UNSLIDE_OR_PERM (struct turnstile*) ;
 int priority_queue_entry_key (int *,int *) ;
 int turnstile_priority_queue_update_entry_key (int *,int *,int) ;
 int turnstile_recompute_priority_locked (struct turnstile*) ;

__attribute__((used)) static boolean_t
turnstile_update_turnstile_promotion_locked(
 struct turnstile *dst_turnstile,
 struct turnstile *src_turnstile)
{
 int src_turnstile_link_priority;
 src_turnstile_link_priority = priority_queue_entry_key(&(dst_turnstile->ts_inheritor_queue),
     &(src_turnstile->ts_inheritor_links));

 if (src_turnstile->ts_priority != src_turnstile_link_priority) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (TURNSTILE_CODE(TURNSTILE_HEAP_OPERATIONS, (TURNSTILE_MOVED_IN_TURNSTILE_HEAP))) | DBG_FUNC_NONE,
   VM_KERNEL_UNSLIDE_OR_PERM(dst_turnstile),
   VM_KERNEL_UNSLIDE_OR_PERM(src_turnstile),
   src_turnstile->ts_priority, src_turnstile_link_priority, 0);
 }

 if (!turnstile_priority_queue_update_entry_key(
   &dst_turnstile->ts_inheritor_queue, &src_turnstile->ts_inheritor_links,
   src_turnstile->ts_priority)) {
  return FALSE;
 }


 return turnstile_recompute_priority_locked(dst_turnstile);
}
