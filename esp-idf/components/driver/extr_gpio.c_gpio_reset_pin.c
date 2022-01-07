
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gpio_num_t ;
struct TYPE_3__ {int pull_up_en; int pull_down_en; int intr_type; int mode; int pin_bit_mask; } ;
typedef TYPE_1__ gpio_config_t ;
typedef int esp_err_t ;


 int BIT64 (scalar_t__) ;
 int ESP_OK ;
 int GPIO_INTR_DISABLE ;
 scalar_t__ GPIO_IS_VALID_GPIO (scalar_t__) ;
 int GPIO_MODE_DISABLE ;
 int assert (int) ;
 int gpio_config (TYPE_1__*) ;

esp_err_t gpio_reset_pin(gpio_num_t gpio_num)
{
    assert(gpio_num >= 0 && GPIO_IS_VALID_GPIO(gpio_num));
    gpio_config_t cfg = {
        .pin_bit_mask = BIT64(gpio_num),
        .mode = GPIO_MODE_DISABLE,

        .pull_up_en = 1,
        .pull_down_en = 0,
        .intr_type = GPIO_INTR_DISABLE,
    };
    gpio_config(&cfg);
    return ESP_OK;
}
