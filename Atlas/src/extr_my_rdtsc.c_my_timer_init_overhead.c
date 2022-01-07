
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulonglong ;



__attribute__((used)) static void my_timer_init_overhead(ulonglong *overhead,
                                   ulonglong (*cycle_timer)(void),
                                   ulonglong (*this_timer)(void),
                                   ulonglong best_timer_overhead)
{
  ulonglong time1, time2;
  int i;


  for (i= 0, *overhead= 1000000000; i < 20; ++i)
  {
    time1= cycle_timer();
    this_timer();
    time2= cycle_timer() - time1;
    if (*overhead > time2)
      *overhead= time2;
  }
  *overhead-= best_timer_overhead;
}
