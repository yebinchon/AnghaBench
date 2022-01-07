
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_4__ {scalar_t__ pullup; int reg; } ;
struct TYPE_3__ {int rue; } ;


 int CLEAR_PERI_REG_MASK (int ,scalar_t__) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 TYPE_2__* rtc_gpio_desc ;
 TYPE_1__** rtc_gpio_reg ;
 int rtc_spinlock ;

esp_err_t rtc_gpio_pullup_dis(gpio_num_t gpio_num)
{
    return ESP_OK;
}
