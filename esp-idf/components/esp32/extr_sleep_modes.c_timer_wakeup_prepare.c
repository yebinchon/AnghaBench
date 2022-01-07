
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ rtc_ticks_at_sleep_start; scalar_t__ sleep_time_adjustment; scalar_t__ sleep_duration; } ;


 int esp_clk_slowclk_cal_get () ;
 int rtc_sleep_set_wakeup_time (scalar_t__) ;
 scalar_t__ rtc_time_us_to_slowclk (scalar_t__,int ) ;
 TYPE_1__ s_config ;

__attribute__((used)) static void timer_wakeup_prepare(void)
{
    uint32_t period = esp_clk_slowclk_cal_get();
    int64_t sleep_duration = (int64_t) s_config.sleep_duration - (int64_t) s_config.sleep_time_adjustment;
    if (sleep_duration < 0) {
        sleep_duration = 0;
    }
    int64_t rtc_count_delta = rtc_time_us_to_slowclk(sleep_duration, period);

    rtc_sleep_set_wakeup_time(s_config.rtc_ticks_at_sleep_start + rtc_count_delta);
}
