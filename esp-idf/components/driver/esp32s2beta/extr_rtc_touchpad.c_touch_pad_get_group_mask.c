
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int touch_scan_pad_map; } ;
struct TYPE_8__ {TYPE_2__ touch_scan_ctrl; } ;
struct TYPE_5__ {int touch_outen; } ;
struct TYPE_7__ {TYPE_1__ sar_touch_conf; } ;


 int ESP_OK ;
 TYPE_4__ RTCCNTL ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;
 TYPE_3__ SENS ;
 int TOUCH_PAD_BIT_MASK_MAX ;

esp_err_t touch_pad_get_group_mask(uint16_t *enable_mask)
{
    RTC_TOUCH_ENTER_CRITICAL();
    *enable_mask = SENS.sar_touch_conf.touch_outen & RTCCNTL.touch_scan_ctrl.touch_scan_pad_map & TOUCH_PAD_BIT_MASK_MAX;


    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
