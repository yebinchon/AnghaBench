
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gpio_int; int semphr_int; } ;
typedef TYPE_1__ slot_info_t ;
typedef int esp_err_t ;
typedef int TickType_t ;
typedef scalar_t__ BaseType_t ;


 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 scalar_t__ gpio_get_level (int ) ;
 int gpio_intr_disable (int ) ;
 int gpio_intr_enable (int ) ;
 scalar_t__ pdFALSE ;
 TYPE_1__* s_slots ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

esp_err_t sdspi_host_io_int_wait(int slot, TickType_t timeout_ticks)
{
    slot_info_t* pslot = &s_slots[slot];

    if (gpio_get_level(pslot->gpio_int)==0) return ESP_OK;


    xSemaphoreTake(pslot->semphr_int, 0);

    gpio_intr_enable(pslot->gpio_int);
    BaseType_t ret = xSemaphoreTake(pslot->semphr_int, timeout_ticks);
    if (ret == pdFALSE) {
        gpio_intr_disable(pslot->gpio_int);
        return ESP_ERR_TIMEOUT;
    }
    return ESP_OK;
}
