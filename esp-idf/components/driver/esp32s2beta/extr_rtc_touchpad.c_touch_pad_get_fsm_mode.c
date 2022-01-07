
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int touch_fsm_mode_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int touch_start_force; } ;
struct TYPE_4__ {TYPE_1__ touch_ctrl2; } ;


 int ESP_OK ;
 TYPE_2__ RTCCNTL ;
 int assert (int ) ;

esp_err_t touch_pad_get_fsm_mode(touch_fsm_mode_t *mode)
{
    assert(mode != ((void*)0));
    *mode = RTCCNTL.touch_ctrl2.touch_start_force;
    return ESP_OK;
}
