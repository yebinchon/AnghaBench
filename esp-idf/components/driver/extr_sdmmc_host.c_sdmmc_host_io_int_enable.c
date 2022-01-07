
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_2__ {int d1_gpio; } ;


 int ESP_OK ;
 int configure_pin (int ) ;
 TYPE_1__* sdmmc_slot_info ;

esp_err_t sdmmc_host_io_int_enable(int slot)
{
    configure_pin(sdmmc_slot_info[slot].d1_gpio);
    return ESP_OK;
}
