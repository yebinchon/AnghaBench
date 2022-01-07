
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timebase_freq_t {int timebase_den; int timebase_num; } ;
struct TYPE_2__ {int timebase_frequency_hz; } ;


 TYPE_1__ gPEClockFrequencyInfo ;
 int gTimebaseCallback (struct timebase_freq_t*) ;

void
PE_call_timebase_callback(void)
{
 struct timebase_freq_t timebase_freq;

 timebase_freq.timebase_num = gPEClockFrequencyInfo.timebase_frequency_hz;
 timebase_freq.timebase_den = 1;

 if (gTimebaseCallback)
  gTimebaseCallback(&timebase_freq);
}
