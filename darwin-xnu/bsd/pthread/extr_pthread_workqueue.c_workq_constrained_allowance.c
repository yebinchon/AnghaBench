
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ thread_qos_t ;
struct workqueue {scalar_t__ wq_constrained_threads_scheduled; } ;
struct TYPE_2__ {scalar_t__ qos_bucket; } ;
struct uthread {int uu_workq_flags; TYPE_1__ uu_workq_pri; } ;


 int DBG_FUNC_NONE ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int TRACE_wq_constrained_admission ;
 int UT_WORKQ_OVERCOMMIT ;
 scalar_t__ WORKQ_THREAD_QOS_MANAGER ;
 int WQ_TRACE_WQ (int,struct workqueue*,int,scalar_t__,scalar_t__,int ) ;
 size_t _wq_bucket (scalar_t__) ;
 int _wq_thactive (struct workqueue*) ;
 scalar_t__ _wq_thactive_aggregate_downto_qos (struct workqueue*,int ,scalar_t__,scalar_t__*,int *) ;
 int assert (int) ;
 int workq_schedule_delayed_thread_creation (struct workqueue*,int ) ;
 scalar_t__ wq_max_constrained_threads ;
 scalar_t__* wq_max_parallelism ;

__attribute__((used)) static uint32_t
workq_constrained_allowance(struct workqueue *wq, thread_qos_t at_qos,
  struct uthread *uth, bool may_start_timer)
{
 assert(at_qos != WORKQ_THREAD_QOS_MANAGER);
 uint32_t count = 0;

 uint32_t max_count = wq->wq_constrained_threads_scheduled;
 if (uth && (uth->uu_workq_flags & UT_WORKQ_OVERCOMMIT) == 0) {



  assert(max_count > 0);
  max_count--;
 }
 if (max_count >= wq_max_constrained_threads) {
  WQ_TRACE_WQ(TRACE_wq_constrained_admission | DBG_FUNC_NONE, wq, 1,
    wq->wq_constrained_threads_scheduled,
    wq_max_constrained_threads, 0);




  return 0;
 }
 max_count -= wq_max_constrained_threads;
 uint32_t busycount, thactive_count;

 thactive_count = _wq_thactive_aggregate_downto_qos(wq, _wq_thactive(wq),
   at_qos, &busycount, ((void*)0));

 if (uth && uth->uu_workq_pri.qos_bucket != WORKQ_THREAD_QOS_MANAGER &&
   at_qos <= uth->uu_workq_pri.qos_bucket) {





  assert(thactive_count > 0);
  thactive_count--;
 }

 count = wq_max_parallelism[_wq_bucket(at_qos)];
 if (count > thactive_count + busycount) {
  count -= thactive_count + busycount;
  WQ_TRACE_WQ(TRACE_wq_constrained_admission | DBG_FUNC_NONE, wq, 2,
    thactive_count, busycount, 0);
  return MIN(count, max_count);
 } else {
  WQ_TRACE_WQ(TRACE_wq_constrained_admission | DBG_FUNC_NONE, wq, 3,
    thactive_count, busycount, 0);
 }

 if (busycount && may_start_timer) {




  workq_schedule_delayed_thread_creation(wq, 0);
 }

 return 0;
}
