
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pte_osThreadGetMaxPriority () ;

int
sched_get_priority_max (int policy)
{
  return pte_osThreadGetMaxPriority();
}
