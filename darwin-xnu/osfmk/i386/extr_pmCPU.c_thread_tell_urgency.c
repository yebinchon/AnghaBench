
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int thread_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int cpu_nthread; } ;
struct TYPE_3__ {int (* pmThreadTellUrgency ) (int,scalar_t__,scalar_t__) ;} ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MACH_SCHED ;
 scalar_t__ FALSE ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_URGENCY ;
 int SCHED_DEBUG_PLATFORM_KERNEL_DEBUG_CONSTANT (int,int,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ TRUE ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 int cpu_number () ;
 TYPE_2__* current_cpu_datap () ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ mach_absolute_time () ;
 int machine_timeout_suspended () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int panic (char*,int (*) (int,scalar_t__,scalar_t__),scalar_t__) ;
 TYPE_1__* pmDispatch ;
 int pmInitDone ;
 int stub1 (int,scalar_t__,scalar_t__) ;
 scalar_t__ urgency_notification_assert_abstime_threshold ;
 scalar_t__ urgency_notification_max_recorded ;
 int ** urgency_stats ;

void
thread_tell_urgency(int urgency,
    uint64_t rt_period,
    uint64_t rt_deadline,
    uint64_t sched_latency,
    thread_t nthread)
{
 uint64_t urgency_notification_time_start = 0, delta;
 boolean_t urgency_assert = (urgency_notification_assert_abstime_threshold != 0);
 assert(get_preemption_level() > 0 || ml_get_interrupts_enabled() == FALSE);



 if (!pmInitDone
     || pmDispatch == ((void*)0)
     || pmDispatch->pmThreadTellUrgency == ((void*)0))
  return;

 SCHED_DEBUG_PLATFORM_KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED,MACH_URGENCY) | DBG_FUNC_START, urgency, rt_period, rt_deadline, sched_latency, 0);

 if (__improbable((urgency_assert == TRUE)))
  urgency_notification_time_start = mach_absolute_time();

 current_cpu_datap()->cpu_nthread = nthread;
 pmDispatch->pmThreadTellUrgency(urgency, rt_period, rt_deadline);

 if (__improbable((urgency_assert == TRUE))) {
  delta = mach_absolute_time() - urgency_notification_time_start;

  if (__improbable(delta > urgency_notification_max_recorded)) {




   urgency_notification_max_recorded = delta;

   if (__improbable((delta > urgency_notification_assert_abstime_threshold) && !machine_timeout_suspended()))
    panic("Urgency notification callout %p exceeded threshold, 0x%llx abstime units", pmDispatch->pmThreadTellUrgency, delta);
  }
 }

 SCHED_DEBUG_PLATFORM_KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED,MACH_URGENCY) | DBG_FUNC_END, urgency, rt_period, rt_deadline, 0, 0);
}
