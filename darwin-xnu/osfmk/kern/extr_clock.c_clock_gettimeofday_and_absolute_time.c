
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct bintime {int frac; int sec; } ;
typedef int spl_t ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;
struct TYPE_2__ {int tick_scale_x; int bintime; } ;


 int bintime2usclock (struct bintime*,int *,int *) ;
 int bintime_add (struct bintime*,int *) ;
 TYPE_1__ clock_calend ;
 int clock_gettimeofday_set_commpage (int ,int ,int ,int ,int ) ;
 int clock_lock () ;
 int clock_unlock () ;
 struct bintime get_scaled_time (int ) ;
 int mach_absolute_time () ;
 int splclock () ;
 int splx (int ) ;
 int ticks_per_sec ;

void
clock_gettimeofday_and_absolute_time(
 clock_sec_t *secs,
 clock_usec_t *microsecs,
 uint64_t *mach_time)
{
 uint64_t now;
 spl_t s;
 struct bintime bt;

 s = splclock();
 clock_lock();

 now = mach_absolute_time();
 bt = get_scaled_time(now);
 bintime_add(&bt, &clock_calend.bintime);
 bintime2usclock(&bt, secs, microsecs);

 clock_gettimeofday_set_commpage(now, bt.sec, bt.frac, clock_calend.tick_scale_x, ticks_per_sec);

 clock_unlock();
 splx(s);

 if (mach_time) {
  *mach_time = now;
 }
}
