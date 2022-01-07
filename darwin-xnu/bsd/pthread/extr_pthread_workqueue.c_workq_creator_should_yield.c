
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ thread_qos_t ;
struct workqueue {scalar_t__ wq_fulfilled; scalar_t__* wq_thscheduled_count; } ;
struct TYPE_3__ {scalar_t__ fulfilled_snapshot; } ;
struct TYPE_4__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; int uu_workq_pri; } ;


 scalar_t__ THREAD_QOS_USER_INTERACTIVE ;
 int TRACE_wq_creator_yield ;
 int WORKQ_NUM_QOS_BUCKETS ;
 int WQ_TRACE_WQ (int ,struct workqueue*,int,scalar_t__,scalar_t__,int ) ;
 size_t _wq_bucket (scalar_t__) ;
 scalar_t__ workq_pri_override (int ) ;
 scalar_t__* wq_max_parallelism ;

__attribute__((used)) static bool
workq_creator_should_yield(struct workqueue *wq, struct uthread *uth)
{
 thread_qos_t qos = workq_pri_override(uth->uu_workq_pri);

 if (qos >= THREAD_QOS_USER_INTERACTIVE) {
  return 0;
 }

 uint32_t snapshot = uth->uu_save.uus_workq_park_data.fulfilled_snapshot;
 if (wq->wq_fulfilled == snapshot) {
  return 0;
 }

 uint32_t cnt = 0, conc = wq_max_parallelism[_wq_bucket(qos)];
 if (wq->wq_fulfilled - snapshot > conc) {

  WQ_TRACE_WQ(TRACE_wq_creator_yield, wq, 1,
    wq->wq_fulfilled, snapshot, 0);
  return 1;
 }

 for (int i = _wq_bucket(qos); i < WORKQ_NUM_QOS_BUCKETS; i++) {
  cnt += wq->wq_thscheduled_count[i];
 }
 if (conc <= cnt) {

  WQ_TRACE_WQ(TRACE_wq_creator_yield, wq, 2,
    wq->wq_fulfilled, snapshot, 0);
  return 1;
 }

 return 0;
}
