
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int touch_volt_atten_t ;
typedef int touch_low_volt_t ;
typedef int touch_high_volt_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int touch_drange; int touch_drefl; int touch_drefh; } ;
struct TYPE_4__ {TYPE_1__ touch_ctrl2; } ;


 int ESP_OK ;
 TYPE_2__ RTCCNTL ;

esp_err_t touch_pad_get_voltage(touch_high_volt_t *refh, touch_low_volt_t *refl, touch_volt_atten_t *atten)
{
    if (refh) {
        *refh = RTCCNTL.touch_ctrl2.touch_drefh;
    }
    if (refl) {
        *refl = RTCCNTL.touch_ctrl2.touch_drefl;
    }
    if (atten) {
        *atten = RTCCNTL.touch_ctrl2.touch_drange;
    }
    return ESP_OK;
}
