
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ touch_fsm_mode_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int touch_slp_timer_en; scalar_t__ touch_start_force; scalar_t__ touch_start_en; } ;
struct TYPE_4__ {TYPE_1__ touch_ctrl2; } ;


 int ESP_OK ;
 TYPE_2__ RTCCNTL ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;
 scalar_t__ TOUCH_FSM_MODE_TIMER ;

esp_err_t touch_pad_set_fsm_mode(touch_fsm_mode_t mode)
{
    RTC_TOUCH_ENTER_CRITICAL();
    RTCCNTL.touch_ctrl2.touch_start_en = 0;
    RTCCNTL.touch_ctrl2.touch_start_force = mode;
    RTCCNTL.touch_ctrl2.touch_slp_timer_en = (mode == TOUCH_FSM_MODE_TIMER ? 1 : 0);
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
