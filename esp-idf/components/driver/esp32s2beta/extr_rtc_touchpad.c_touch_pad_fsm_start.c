
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {int touch_clkgate_en; } ;
struct TYPE_8__ {TYPE_1__ touch_ctrl2; } ;
struct TYPE_6__ {int touch_channel_clr; } ;
struct TYPE_7__ {TYPE_2__ sar_touch_chn_st; } ;


 int ESP_OK ;
 TYPE_4__ RTCCNTL ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;
 TYPE_3__ SENS ;
 int TOUCH_PAD_BIT_MASK_MAX ;

esp_err_t touch_pad_fsm_start(void)
{
    RTC_TOUCH_ENTER_CRITICAL();
    RTCCNTL.touch_ctrl2.touch_clkgate_en = 1;
    SENS.sar_touch_chn_st.touch_channel_clr = TOUCH_PAD_BIT_MASK_MAX;
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
