
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int mpqueue_head_t ;
struct TYPE_3__ {int queue; } ;
struct TYPE_4__ {TYPE_1__ rtclock_timer; } ;


 TYPE_2__* getCpuDatap () ;
 int timer_set_deadline (scalar_t__) ;

void
timer_queue_cancel(
 mpqueue_head_t *queue,
 uint64_t deadline,
 uint64_t new_deadline)
{
 if (queue == &getCpuDatap()->rtclock_timer.queue) {
  if (deadline < new_deadline)
   timer_set_deadline(new_deadline);
 }
}
