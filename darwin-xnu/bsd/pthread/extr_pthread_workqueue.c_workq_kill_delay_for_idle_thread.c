
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;
struct workqueue {scalar_t__ wq_thidlecount; } ;
struct TYPE_2__ {scalar_t__ abstime; } ;


 scalar_t__ wq_death_max_load ;
 scalar_t__ wq_max_constrained_threads ;
 TYPE_1__ wq_reduce_pool_window ;

__attribute__((used)) static inline uint64_t
workq_kill_delay_for_idle_thread(struct workqueue *wq)
{
 uint64_t delay = wq_reduce_pool_window.abstime;
 uint16_t idle = wq->wq_thidlecount;







 if (idle <= wq_death_max_load) {
  return delay;
 }

 if (wq_max_constrained_threads > idle - wq_death_max_load) {
  delay *= (wq_max_constrained_threads - (idle - wq_death_max_load));
 }
 return delay / wq_max_constrained_threads;
}
