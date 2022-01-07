
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ shift; } ;
typedef TYPE_1__ pal_rtc_nanotime_t ;
struct TYPE_5__ {int cpu_clock_rate_hz; int cpu_frequency_hz; } ;


 int UI_CPUFREQ_ROUNDING_FACTOR ;
 TYPE_3__ gPEClockFrequencyInfo ;
 int kprintf (char*,int,int) ;
 TYPE_1__ pal_rtc_nanotime_info ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static uint64_t
rtc_export_speed(uint64_t cyc_per_sec)
{
 pal_rtc_nanotime_t *rntp = &pal_rtc_nanotime_info;
 uint64_t cycles;

 if (rntp->shift != 0 )
  printf("Slow TSC, rtc_nanotime.shift == %d\n", rntp->shift);


        cycles = ((cyc_per_sec + (UI_CPUFREQ_ROUNDING_FACTOR/2))
   / UI_CPUFREQ_ROUNDING_FACTOR)
    * UI_CPUFREQ_ROUNDING_FACTOR;




        if (cycles >= 0x100000000ULL) {
            gPEClockFrequencyInfo.cpu_clock_rate_hz = 0xFFFFFFFFUL;
        } else {
            gPEClockFrequencyInfo.cpu_clock_rate_hz = (unsigned long)cycles;
        }
        gPEClockFrequencyInfo.cpu_frequency_hz = cycles;

 kprintf("[RTCLOCK] frequency %llu (%llu)\n", cycles, cyc_per_sec);
 return(cycles);
}
