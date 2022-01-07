
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int ddr; } ;
struct TYPE_4__ {int emmc_ddr_reg; TYPE_1__ uhs; } ;


 int BIT (int) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGD (int ,char*,int,int) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_OK ;
 TYPE_2__ SDMMC ;
 int TAG ;
 int* s_slot_width ;

esp_err_t sdmmc_host_set_bus_ddr_mode(int slot, bool ddr_enabled)
{
    if (!(slot == 0 || slot == 1)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (s_slot_width[slot] == 8 && ddr_enabled) {
        ESP_LOGW(TAG, "DDR mode with 8-bit bus width is not supported yet");

        return ESP_ERR_NOT_SUPPORTED;
    }
    uint32_t mask = BIT(slot);
    if (ddr_enabled) {
        SDMMC.uhs.ddr |= mask;
        SDMMC.emmc_ddr_reg |= mask;
    } else {
        SDMMC.uhs.ddr &= ~mask;
        SDMMC.emmc_ddr_reg &= ~mask;
    }
    ESP_LOGD(TAG, "slot=%d ddr=%d", slot, ddr_enabled ? 1 : 0);
    return ESP_OK;
}
