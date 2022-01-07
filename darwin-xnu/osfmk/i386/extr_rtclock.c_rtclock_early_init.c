
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int rtc_set_timescale (int ) ;
 int tscFreq ;

void
rtclock_early_init(void)
{
 assert(tscFreq);
 rtc_set_timescale(tscFreq);
}
