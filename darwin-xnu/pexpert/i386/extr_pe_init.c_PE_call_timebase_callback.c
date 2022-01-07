
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timebase_freq_t {unsigned long timebase_num; unsigned long timebase_den; } ;
struct TYPE_2__ {unsigned long bus_clock_rate_num; unsigned long bus_to_dec_rate_num; unsigned long bus_clock_rate_den; unsigned long bus_to_dec_rate_den; } ;


 TYPE_1__ gPEClockFrequencyInfo ;
 int gTimebaseCallback (struct timebase_freq_t*) ;

void PE_call_timebase_callback(void)
{
  struct timebase_freq_t timebase_freq;
  unsigned long num, den, cnt;

  num = gPEClockFrequencyInfo.bus_clock_rate_num * gPEClockFrequencyInfo.bus_to_dec_rate_num;
  den = gPEClockFrequencyInfo.bus_clock_rate_den * gPEClockFrequencyInfo.bus_to_dec_rate_den;

  cnt = 2;
  while (cnt <= den) {
    if ((num % cnt) || (den % cnt)) {
      cnt++;
      continue;
    }

    num /= cnt;
    den /= cnt;
  }

  timebase_freq.timebase_num = num;
  timebase_freq.timebase_den = den;

  if (gTimebaseCallback) gTimebaseCallback(&timebase_freq);
}
