
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (int ,int ) ;
 int rtc_decrementer_max ;
 scalar_t__ rtc_decrementer_min ;

__attribute__((used)) static uint64_t
deadline_to_decrementer(
 uint64_t deadline,
 uint64_t now)
{
 uint64_t delta;

 if (deadline <= now)
  return rtc_decrementer_min;
 else {
  delta = deadline - now;
  return MIN(MAX(rtc_decrementer_min,delta),rtc_decrementer_max);
 }
}
