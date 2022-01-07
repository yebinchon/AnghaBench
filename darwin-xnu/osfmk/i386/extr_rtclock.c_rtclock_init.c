
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_4__ {void* cpu_frequency_max_hz; void* cpu_frequency_min_hz; } ;
struct TYPE_3__ {int (* rtc_config ) () ;} ;


 int assert (int) ;
 int clock_timebase_init () ;
 scalar_t__ cpu_number () ;
 TYPE_2__ gPEClockFrequencyInfo ;
 scalar_t__ master_cpu ;
 int ml_get_interrupts_enabled () ;
 int ml_init_delay_spin_threshold (int) ;
 int ml_init_lock_timeout () ;
 void* rtc_export_speed (int) ;
 TYPE_1__* rtc_timer ;
 int rtc_timer_init () ;
 int rtc_timer_start () ;
 int stub1 () ;
 int tscFreq ;

int
rtclock_init(void)
{
 uint64_t cycles;

 assert(!ml_get_interrupts_enabled());

 if (cpu_number() == master_cpu) {

  assert(tscFreq);




  cycles = rtc_export_speed(tscFreq);





  gPEClockFrequencyInfo.cpu_frequency_min_hz = cycles;
  gPEClockFrequencyInfo.cpu_frequency_max_hz = cycles;

  rtc_timer_init();
  clock_timebase_init();
  ml_init_lock_timeout();
  ml_init_delay_spin_threshold(10);
 }


 rtc_timer->rtc_config();
 rtc_timer_start();

 return (1);
}
