
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_thactive_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ thread_qos_t ;
struct workqueue {int* wq_thscheduled_count; int * wq_lastblocked_ts; } ;


 scalar_t__ THREAD_QOS_LAST ;
 int WORKQ_NUM_QOS_BUCKETS ;
 scalar_t__ WORKQ_THREAD_QOS_MAX ;
 scalar_t__ WORKQ_THREAD_QOS_MIN ;
 int WQ_THACTIVE_BUCKET_MASK ;
 int WQ_THACTIVE_BUCKET_WIDTH ;
 int _wq_bucket (scalar_t__) ;
 int assert (int) ;
 int mach_absolute_time () ;
 scalar_t__ workq_thread_is_busy (int ,int *) ;

__attribute__((used)) static inline uint32_t
_wq_thactive_aggregate_downto_qos(struct workqueue *wq, wq_thactive_t v,
  thread_qos_t qos, uint32_t *busycount, uint32_t *max_busycount)
{
 uint32_t count = 0, active;
 uint64_t curtime;

 assert(WORKQ_THREAD_QOS_MIN <= qos && qos <= WORKQ_THREAD_QOS_MAX);

 if (busycount) {
  curtime = mach_absolute_time();
  *busycount = 0;
 }
 if (max_busycount) {
  *max_busycount = THREAD_QOS_LAST - qos;
 }

 int i = _wq_bucket(qos);
 v >>= i * WQ_THACTIVE_BUCKET_WIDTH;
 for (; i < WORKQ_NUM_QOS_BUCKETS; i++, v >>= WQ_THACTIVE_BUCKET_WIDTH) {
  active = v & WQ_THACTIVE_BUCKET_MASK;
  count += active;

  if (busycount && wq->wq_thscheduled_count[i] > active) {
   if (workq_thread_is_busy(curtime, &wq->wq_lastblocked_ts[i])) {






    (*busycount)++;
   }
  }
 }

 return count;
}
