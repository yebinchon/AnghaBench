
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ TIMER_RESORT_THRESHOLD_ABSTIME ;
 int TRUE ;

boolean_t
timer_resort_threshold(uint64_t skew) {
 if (skew >= TIMER_RESORT_THRESHOLD_ABSTIME)
  return TRUE;
 else
  return FALSE;
}
