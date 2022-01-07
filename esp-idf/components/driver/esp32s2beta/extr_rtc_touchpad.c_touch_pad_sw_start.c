
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {scalar_t__ touch_start_force; int touch_start_en; } ;
struct TYPE_4__ {TYPE_1__ touch_ctrl2; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 TYPE_2__ RTCCNTL ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;
 scalar_t__ TOUCH_FSM_MODE_SW ;

esp_err_t touch_pad_sw_start(void)
{
    RTC_MODULE_CHECK((RTCCNTL.touch_ctrl2.touch_start_force == TOUCH_FSM_MODE_SW),
                     "touch fsm mode error", ESP_ERR_INVALID_STATE);
    RTC_TOUCH_ENTER_CRITICAL();
    RTCCNTL.touch_ctrl2.touch_start_en = 0;
    RTCCNTL.touch_ctrl2.touch_start_en = 1;
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
