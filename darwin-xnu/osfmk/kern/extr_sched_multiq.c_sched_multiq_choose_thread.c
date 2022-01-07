
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int thread_t ;
typedef TYPE_2__* sched_group_t ;
typedef TYPE_3__* run_queue_t ;
typedef int processor_t ;
typedef scalar_t__ integer_t ;
typedef TYPE_4__* entry_queue_t ;
typedef scalar_t__ boolean_t ;
typedef int ast_t ;
struct TYPE_20__ {int highq; scalar_t__ count; } ;
struct TYPE_19__ {int highq; scalar_t__ count; } ;
struct TYPE_17__ {scalar_t__ count; scalar_t__ highq; } ;
struct TYPE_18__ {TYPE_1__ runq; } ;
struct TYPE_16__ {TYPE_2__* sched_group; } ;


 int AST_PREEMPTION ;
 int DBG_FUNC_NONE ;
 int DBG_MACH_SCHED ;
 scalar_t__ FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,scalar_t__,scalar_t__,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_MULTIQ_BOUND ;
 int MACH_MULTIQ_DEQUEUE ;
 int MACH_MULTIQ_GLOBAL ;
 int MACH_MULTIQ_GROUP ;
 int SCHED_HEADQ ;
 int THREAD_NULL ;
 scalar_t__ TRUE ;
 TYPE_15__* current_thread () ;
 scalar_t__ deep_drain ;
 scalar_t__ drain_band_limit ;
 scalar_t__ drain_ceiling ;
 scalar_t__ drain_depth_limit ;
 int global_check_entry_queue (TYPE_4__*) ;
 int group_check_run_queue (TYPE_4__*,TYPE_2__*) ;
 TYPE_3__* multiq_bound_runq (int ) ;
 TYPE_4__* multiq_main_entryq (int ) ;
 scalar_t__ multiq_sanity_check ;
 int run_queue_dequeue (TYPE_3__*,int ) ;
 int sched_global_deep_drain_dequeue_thread (TYPE_4__*) ;
 int sched_global_dequeue_thread (TYPE_4__*) ;
 int sched_group_dequeue_thread (TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static thread_t
sched_multiq_choose_thread(
                           processor_t processor,
                           int priority,
                           ast_t reason)
{
 entry_queue_t main_entryq = multiq_main_entryq(processor);
 run_queue_t bound_runq = multiq_bound_runq(processor);

 boolean_t choose_bound_runq = FALSE;

 if (bound_runq->highq < priority &&
     main_entryq->highq < priority)
  return THREAD_NULL;

 if (bound_runq->count && main_entryq->count) {
  if (bound_runq->highq >= main_entryq->highq) {
   choose_bound_runq = TRUE;
  } else {

  }
 } else if (bound_runq->count) {
  choose_bound_runq = TRUE;
 } else if (main_entryq->count) {

 } else {
  return (THREAD_NULL);
 }

 if (choose_bound_runq) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      MACHDBG_CODE(DBG_MACH_SCHED, MACH_MULTIQ_DEQUEUE) | DBG_FUNC_NONE,
      MACH_MULTIQ_BOUND, main_entryq->highq, bound_runq->highq, 0, 0);

  return run_queue_dequeue(bound_runq, SCHED_HEADQ);
 }

 sched_group_t group = current_thread()->sched_group;
 if (group->runq.count != 0 && (reason & AST_PREEMPTION) == 0) {
  boolean_t favor_group = TRUE;

  integer_t global_pri = main_entryq->highq;
  integer_t group_pri = group->runq.highq;







  if (global_pri > group_pri) {




   if (global_pri > drain_depth_limit && group_pri <= drain_depth_limit)
    favor_group = FALSE;





   if (global_pri >= drain_ceiling)
    favor_group = FALSE;




   if ((global_pri - group_pri) >= drain_band_limit)
    favor_group = FALSE;
  }

  if (favor_group) {

   KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
       MACHDBG_CODE(DBG_MACH_SCHED, MACH_MULTIQ_DEQUEUE) | DBG_FUNC_NONE,
       MACH_MULTIQ_GROUP, global_pri, group_pri, 0, 0);

   return sched_group_dequeue_thread(main_entryq, group);
  }
 }

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
     MACHDBG_CODE(DBG_MACH_SCHED, MACH_MULTIQ_DEQUEUE) | DBG_FUNC_NONE,
     MACH_MULTIQ_GLOBAL, main_entryq->highq, group->runq.highq, 0, 0);


 if (deep_drain) {
  return sched_global_deep_drain_dequeue_thread(main_entryq);
 } else {
  return sched_global_dequeue_thread(main_entryq);
 }
}
