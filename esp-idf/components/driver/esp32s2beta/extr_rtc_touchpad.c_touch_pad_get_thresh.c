
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


 int ESP_OK ;
 TYPE_2__ SENS ;

esp_err_t touch_pad_get_thresh(touch_pad_t touch_num, uint32_t *threshold)
{
    if (threshold) {
        *threshold = SENS.touch_thresh[touch_num - 1].thresh;
    }
    return ESP_OK;
}
