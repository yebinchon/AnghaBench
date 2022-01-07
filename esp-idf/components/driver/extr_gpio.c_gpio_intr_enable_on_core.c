
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* pin; } ;
struct TYPE_3__ {void* int_ena; } ;


 int ESP_OK ;
 TYPE_2__ GPIO ;
 void* GPIO_APP_CPU_INTR_ENA ;
 void* GPIO_PRO_CPU_INTR_ENA ;
 int gpio_intr_status_clr (size_t) ;

__attribute__((used)) static esp_err_t gpio_intr_enable_on_core (gpio_num_t gpio_num, uint32_t core_id)
{
    gpio_intr_status_clr(gpio_num);
    return ESP_OK;
}
