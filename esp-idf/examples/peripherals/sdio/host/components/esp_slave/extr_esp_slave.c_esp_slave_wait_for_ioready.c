
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sdmmc_card_t ;
struct TYPE_3__ {int * card; } ;
typedef TYPE_1__ esp_slave_context_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGI (int ,char*,int) ;
 int ESP_LOGV (int ,char*) ;
 scalar_t__ ESP_OK ;
 int FUNC1_EN_MASK ;
 int SD_IO_CCCR_FN_READY ;
 int TAG ;
 scalar_t__ sdmmc_io_read_byte (int *,int ,int ,int*) ;

esp_err_t esp_slave_wait_for_ioready(esp_slave_context_t *context)
{
    ESP_LOGV(TAG, "wait_for_ioready");
    esp_err_t err;
    sdmmc_card_t *card = context->card;

    uint8_t ior = 0;
    while ((ior & FUNC1_EN_MASK) == 0) {
        err = sdmmc_io_read_byte(card, 0, SD_IO_CCCR_FN_READY, &ior);
        if (err != ESP_OK) return err;
        ESP_LOGI(TAG, "IOR: 0x%02x", ior);
    }
    return ESP_OK;
}
