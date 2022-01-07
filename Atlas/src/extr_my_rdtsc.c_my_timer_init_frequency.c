
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulonglong ;
struct TYPE_3__ {int cycles_overhead; int microseconds_overhead; int microseconds_frequency; } ;
typedef TYPE_1__ MY_TIMER_INFO ;


 int MY_TIMER_ITERATIONS ;
 int my_timer_cycles () ;
 int my_timer_microseconds () ;

__attribute__((used)) static ulonglong my_timer_init_frequency(MY_TIMER_INFO *mti)
{
  int i;
  ulonglong time1, time2, time3, time4;
  time1= my_timer_cycles();
  time2= my_timer_microseconds();
  time3= time2;
  for (i= 0; i < MY_TIMER_ITERATIONS; ++i)
  {
    time3= my_timer_microseconds();
    if (time3 - time2 > 200) break;
  }
  time4= my_timer_cycles() - mti->cycles_overhead;
  time4-= mti->microseconds_overhead;
  return (mti->microseconds_frequency * (time4 - time1)) / (time3 - time2);
}
