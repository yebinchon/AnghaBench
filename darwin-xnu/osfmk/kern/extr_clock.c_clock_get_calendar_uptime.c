
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct bintime {int sec; } ;
typedef int spl_t ;
typedef int clock_sec_t ;
struct TYPE_2__ {int offset; } ;


 int bintime_add (struct bintime*,int *) ;
 TYPE_1__ clock_calend ;
 int clock_lock () ;
 int clock_unlock () ;
 struct bintime get_scaled_time (int ) ;
 int mach_absolute_time () ;
 int splclock () ;
 int splx (int ) ;

void
clock_get_calendar_uptime(clock_sec_t *secs)
{
 uint64_t now;
 spl_t s;
 struct bintime bt;

 s = splclock();
 clock_lock();

 now = mach_absolute_time();

 bt = get_scaled_time(now);
 bintime_add(&bt, &clock_calend.offset);

 *secs = bt.sec;

 clock_unlock();
 splx(s);
}
