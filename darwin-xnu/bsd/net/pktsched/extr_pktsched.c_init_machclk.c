
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timebase_frequency_hz; } ;


 int NSEC_PER_SEC ;
 int clock_interval_to_absolutetime_interval (int,int ,int *) ;
 TYPE_1__ gPEClockFrequencyInfo ;
 int machclk_freq ;
 int machclk_per_sec ;

__attribute__((used)) static void
init_machclk(void)
{




 machclk_freq = gPEClockFrequencyInfo.timebase_frequency_hz;

 clock_interval_to_absolutetime_interval(1, NSEC_PER_SEC,
     &machclk_per_sec);
}
