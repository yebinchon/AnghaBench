
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int touch_xpd_wait; } ;
struct TYPE_4__ {void* touch_meas_num; void* touch_sleep_cycles; } ;
struct TYPE_6__ {TYPE_2__ touch_ctrl2; TYPE_1__ touch_ctrl1; } ;


 int ESP_OK ;
 TYPE_3__ RTCCNTL ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;
 int TOUCH_PAD_MEASURE_WAIT_DEFAULT ;

esp_err_t touch_pad_set_meas_time(uint16_t sleep_cycle, uint16_t meas_times)
{
    RTC_TOUCH_ENTER_CRITICAL();

    RTCCNTL.touch_ctrl1.touch_sleep_cycles = sleep_cycle;

    RTCCNTL.touch_ctrl1.touch_meas_num = meas_times;

    RTCCNTL.touch_ctrl2.touch_xpd_wait = TOUCH_PAD_MEASURE_WAIT_DEFAULT;
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
