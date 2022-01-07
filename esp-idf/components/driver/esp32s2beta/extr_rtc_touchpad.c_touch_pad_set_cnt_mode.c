
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int touch_tie_opt_t ;
typedef size_t touch_pad_t ;
typedef int touch_cnt_slope_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* touch_pad; } ;
struct TYPE_3__ {int dac; int tie_opt; } ;


 int ESP_OK ;
 TYPE_2__ RTCIO ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;

esp_err_t touch_pad_set_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t slope, touch_tie_opt_t opt)
{
    RTC_TOUCH_ENTER_CRITICAL();
    RTCIO.touch_pad[touch_num].tie_opt = opt;
    RTCIO.touch_pad[touch_num].dac = slope;
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
