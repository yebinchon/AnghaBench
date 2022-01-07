
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;


 int NSEC_PER_USEC ;
 scalar_t__ clock_boottime ;
 scalar_t__ clock_boottime_usec ;
 int clock_lock () ;
 int clock_unlock () ;
 int splclock () ;
 int splx (int ) ;

void
clock_get_boottime_nanotime(
 clock_sec_t *secs,
 clock_nsec_t *nanosecs)
{
 spl_t s;

 s = splclock();
 clock_lock();

 *secs = (clock_sec_t)clock_boottime;
 *nanosecs = (clock_nsec_t)clock_boottime_usec * NSEC_PER_USEC;

 clock_unlock();
 splx(s);
}
