
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGV (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 int MMC_R1_READY_FOR_DATA ;
 int TAG ;
 int host_is_spi (int *) ;
 scalar_t__ sdmmc_send_cmd_send_status (int *,int*) ;

esp_err_t sdmmc_init_sd_wait_data_ready(sdmmc_card_t* card)
{

    uint32_t status = 0;
    uint32_t count = 0;
    while (!host_is_spi(card) && !(status & MMC_R1_READY_FOR_DATA)) {

        esp_err_t err = sdmmc_send_cmd_send_status(card, &status);
        if (err != ESP_OK) {
            return err;
        }
        if (++count % 16 == 0) {
            ESP_LOGV(TAG, "waiting for card to become ready (%d)", count);
        }
    }
    return ESP_OK;
}
