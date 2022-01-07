
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log_bus_width; } ;
typedef TYPE_1__ sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ sdmmc_send_cmd_set_bus_width (TYPE_1__*,int) ;

esp_err_t sdmmc_init_sd_bus_width(sdmmc_card_t* card)
{
    int width = 1;
    if (card->log_bus_width == 2) {
        width = 4;
    } else if (card->log_bus_width == 3) {
        width = 8;
    }
    esp_err_t err = sdmmc_send_cmd_set_bus_width(card, width);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "set_bus_width failed (0x%x)", err);
        return err;
    }
    return ESP_OK;
}
