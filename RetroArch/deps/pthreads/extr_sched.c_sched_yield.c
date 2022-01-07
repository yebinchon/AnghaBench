
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pte_osThreadSleep (int) ;

int
sched_yield (void)
{
  pte_osThreadSleep (1);

  return 0;
}
