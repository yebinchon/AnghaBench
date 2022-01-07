
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_2__ {int width; int d7_gpio; int d6_gpio; int d5_gpio; int d4_gpio; int d3_gpio; int d2_gpio; int d1_gpio; int d0_gpio; int cmd_gpio; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int gpio_pullup_en (int ) ;
 TYPE_1__* sdmmc_slot_info ;

esp_err_t sdmmc_host_pullup_en(int slot, int width)
{
    if (width > sdmmc_slot_info[slot].width) {

        return ESP_ERR_INVALID_ARG;
    }

    gpio_pullup_en(sdmmc_slot_info[slot].cmd_gpio);
    gpio_pullup_en(sdmmc_slot_info[slot].d0_gpio);
    if (width >= 4) {
        gpio_pullup_en(sdmmc_slot_info[slot].d1_gpio);
        gpio_pullup_en(sdmmc_slot_info[slot].d2_gpio);
        gpio_pullup_en(sdmmc_slot_info[slot].d3_gpio);
    }
    if (width == 8) {
        gpio_pullup_en(sdmmc_slot_info[slot].d4_gpio);
        gpio_pullup_en(sdmmc_slot_info[slot].d5_gpio);
        gpio_pullup_en(sdmmc_slot_info[slot].d6_gpio);
        gpio_pullup_en(sdmmc_slot_info[slot].d7_gpio);
    }
    return ESP_OK;
}
