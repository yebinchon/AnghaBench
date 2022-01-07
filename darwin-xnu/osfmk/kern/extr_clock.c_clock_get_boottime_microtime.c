
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;
typedef scalar_t__ clock_usec_t ;
typedef scalar_t__ clock_sec_t ;
typedef scalar_t__ clock_nsec_t ;


 scalar_t__ clock_boottime ;
 scalar_t__ clock_boottime_usec ;
 int clock_lock () ;
 int clock_unlock () ;
 int splclock () ;
 int splx (int ) ;

void
clock_get_boottime_microtime(
 clock_sec_t *secs,
 clock_usec_t *microsecs)
{
 spl_t s;

 s = splclock();
 clock_lock();

 *secs = (clock_sec_t)clock_boottime;
 *microsecs = (clock_nsec_t)clock_boottime_usec;

 clock_unlock();
 splx(s);
}
