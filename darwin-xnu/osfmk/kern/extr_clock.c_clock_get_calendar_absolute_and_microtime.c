
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spl_t ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int clock_get_calendar_absolute_and_microtime_locked (int *,int *,int *) ;
 int clock_lock () ;
 int clock_unlock () ;
 int splclock () ;
 int splx (int ) ;

void
clock_get_calendar_absolute_and_microtime(
 clock_sec_t *secs,
 clock_usec_t *microsecs,
 uint64_t *abstime)
{
 spl_t s;

 s = splclock();
 clock_lock();

 clock_get_calendar_absolute_and_microtime_locked(secs, microsecs, abstime);

 clock_unlock();
 splx(s);
}
