
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulonglong ;


 int MY_TIMER_ITERATIONS ;

__attribute__((used)) static ulonglong my_timer_init_resolution(ulonglong (*this_timer)(void),
                                          ulonglong overhead_times_2)
{
  ulonglong time1, time2;
  ulonglong best_jump;
  int i, jumps, divisible_by_1000, divisible_by_1000000;

  divisible_by_1000= divisible_by_1000000= 0;
  best_jump= 1000000;
  for (i= jumps= 0; jumps < 3 && i < MY_TIMER_ITERATIONS * 10; ++i)
  {
    time1= this_timer();
    time2= this_timer();
    time2-= time1;
    if (time2)
    {
      ++jumps;
      if (!(time2 % 1000))
      {
        ++divisible_by_1000;
        if (!(time2 % 1000000))
          ++divisible_by_1000000;
      }
      if (best_jump > time2)
        best_jump= time2;

      if (overhead_times_2 == 0)
        break;
    }
  }
  if (jumps == 3)
  {
    if (jumps == divisible_by_1000000)
      return 1000000;
    if (jumps == divisible_by_1000)
      return 1000;
  }
  if (best_jump > overhead_times_2)
    return best_jump;
  return 1;
}
