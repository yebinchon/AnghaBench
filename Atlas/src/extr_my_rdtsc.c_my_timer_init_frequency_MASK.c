#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ulonglong ;
struct TYPE_3__ {int cycles_overhead; int microseconds_overhead; int microseconds_frequency; } ;
typedef  TYPE_1__ MY_TIMER_INFO ;

/* Variables and functions */
 int MY_TIMER_ITERATIONS ; 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static ulonglong FUNC2(MY_TIMER_INFO *mti)
{
  int i;
  ulonglong time1, time2, time3, time4;
  time1= FUNC0();
  time2= FUNC1();
  time3= time2; /* Avoids a Microsoft/IBM compiler warning */
  for (i= 0; i < MY_TIMER_ITERATIONS; ++i)
  {
    time3= FUNC1();
    if (time3 - time2 > 200) break;
  }
  time4= FUNC0() - mti->cycles_overhead;
  time4-= mti->microseconds_overhead;
  return (mti->microseconds_frequency * (time4 - time1)) / (time3 - time2);
}