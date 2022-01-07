
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct bintime {int dummy; } ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;
struct TYPE_2__ {int bintime; } ;


 int bintime2usclock (struct bintime*,int *,int *) ;
 int bintime_add (struct bintime*,int *) ;
 TYPE_1__ clock_calend ;
 struct bintime get_scaled_time (int ) ;
 int mach_absolute_time () ;

__attribute__((used)) static void
clock_get_calendar_absolute_and_microtime_locked(
 clock_sec_t *secs,
 clock_usec_t *microsecs,
 uint64_t *abstime)
{
 uint64_t now;
 struct bintime bt;

 now = mach_absolute_time();
 if (abstime)
  *abstime = now;

 bt = get_scaled_time(now);
 bintime_add(&bt, &clock_calend.bintime);
 bintime2usclock(&bt, secs, microsecs);
}
