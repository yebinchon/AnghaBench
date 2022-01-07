
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wq_thactive_t ;
typedef int thread_qos_t ;
struct workqueue {int * wq_thscheduled_count; int wq_thactive; } ;


 size_t _wq_bucket (int ) ;
 scalar_t__ _wq_thactive_offset_for_qos (int ) ;
 int os_atomic_add_orig (int *,scalar_t__,int ) ;
 int relaxed ;

__attribute__((used)) static inline void
_wq_thactive_move(struct workqueue *wq,
  thread_qos_t old_qos, thread_qos_t new_qos)
{
 wq_thactive_t v = _wq_thactive_offset_for_qos(new_qos) -
   _wq_thactive_offset_for_qos(old_qos);
 os_atomic_add_orig(&wq->wq_thactive, v, relaxed);
 wq->wq_thscheduled_count[_wq_bucket(old_qos)]--;
 wq->wq_thscheduled_count[_wq_bucket(new_qos)]++;
}
