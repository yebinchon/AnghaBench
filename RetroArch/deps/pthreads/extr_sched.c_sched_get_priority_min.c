
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pte_osThreadGetMinPriority () ;

int
sched_get_priority_min (int policy)
{
  return pte_osThreadGetMinPriority();
}
