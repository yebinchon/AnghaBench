
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef long int64_t ;


 long INT_MAX ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 scalar_t__ adjtime_start ;
 long adjtime_total_correction ;
 int adjust_boot_time () ;
 scalar_t__ get_time_since_boot () ;
 long llabs (long) ;
 int s_adjust_time_lock ;

int adjtime(const struct timeval *delta, struct timeval *outdelta)
{
  return -1;


}
