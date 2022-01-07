
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpqueue_head_t ;
struct TYPE_3__ {int queue; } ;
struct TYPE_4__ {TYPE_1__ rtclock_timer; } ;


 TYPE_2__* cpu_datap (int) ;

mpqueue_head_t *
timer_queue_cpu(int cpu)
{
 return &cpu_datap(cpu)->rtclock_timer.queue;
}
