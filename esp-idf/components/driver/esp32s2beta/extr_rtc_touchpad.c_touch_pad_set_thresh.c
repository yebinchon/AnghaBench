
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int touch_pad_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* touch_thresh; } ;
struct TYPE_3__ {int thresh; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;
 TYPE_2__ SENS ;
 int TOUCH_DENOISE_CHANNEL ;
 int TOUCH_PAD_MAX ;

esp_err_t touch_pad_set_thresh(touch_pad_t touch_num, uint32_t threshold)
{
    RTC_MODULE_CHECK((touch_num < TOUCH_PAD_MAX) && (touch_num != TOUCH_DENOISE_CHANNEL), "touch num error", ESP_ERR_INVALID_ARG);
    RTC_TOUCH_ENTER_CRITICAL();
    SENS.touch_thresh[touch_num - 1].thresh = threshold;
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
