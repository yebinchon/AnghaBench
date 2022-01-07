
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cpu_number () ;
 int timer_queue_migrate_cpu (int) ;

uint32_t
pmTimerQueueMigrate(int target_cpu)
{

    return (target_cpu != cpu_number())
  ? timer_queue_migrate_cpu(target_cpu)
  : 0;
}
