
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int touch_meas_num; int touch_sleep_cycles; } ;
struct TYPE_4__ {TYPE_1__ touch_ctrl1; } ;


 int ESP_OK ;
 TYPE_2__ RTCCNTL ;

esp_err_t touch_pad_get_meas_time(uint16_t *sleep_cycle, uint16_t *meas_times)
{
    if (sleep_cycle) {
        *sleep_cycle = RTCCNTL.touch_ctrl1.touch_sleep_cycles;
    }
    if (meas_times) {
        *meas_times = RTCCNTL.touch_ctrl1.touch_meas_num;
    }
    return ESP_OK;
}
