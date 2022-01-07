
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ (* rtc_set ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ rtcPop; scalar_t__ rtcDeadline; } ;


 scalar_t__ EndOfAllTime ;
 scalar_t__ rtc_nanotime_read () ;
 TYPE_2__* rtc_timer ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (scalar_t__,scalar_t__) ;
 TYPE_1__* x86_lcpu () ;

uint64_t
setPop(uint64_t time)
{
 uint64_t now;
 uint64_t pop;


 if (time == 0 || time == EndOfAllTime ) {
  time = EndOfAllTime;
  now = 0;
  pop = rtc_timer->rtc_set(0, 0);
 } else {
  now = rtc_nanotime_read();
  pop = rtc_timer->rtc_set(time, now);
 }


 x86_lcpu()->rtcDeadline = time;
 x86_lcpu()->rtcPop = pop;

 return pop - now;
}
