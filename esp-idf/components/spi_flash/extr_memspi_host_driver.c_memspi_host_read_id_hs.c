
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int miso_len; int* miso_data; int mosi_len; int mosi_data; int command; } ;
typedef TYPE_1__ spi_flash_trans_t ;
struct TYPE_7__ {int (* common_command ) (TYPE_2__*,TYPE_1__*) ;} ;
typedef TYPE_2__ spi_flash_host_driver_t ;
typedef int esp_err_t ;


 int CMD_RDID ;
 int ESP_EARLY_LOGE (int ,char*) ;
 int ESP_EARLY_LOGV (int ,char*,int) ;
 int ESP_ERR_FLASH_NO_RESPONSE ;
 int ESP_OK ;
 int TAG ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;

esp_err_t memspi_host_read_id_hs(spi_flash_host_driver_t *host, uint32_t *id)
{

    spi_flash_trans_t t = {
        .command = CMD_RDID,
        .mosi_data = 0,
        .mosi_len = 0,
        .miso_len = 24
    };
    host->common_command(host, &t);
    uint32_t raw_flash_id = t.miso_data[0];
    ESP_EARLY_LOGV(TAG, "raw_chip_id: %X\n", raw_flash_id);
    if (raw_flash_id == 0xFFFFFF || raw_flash_id == 0) {
        ESP_EARLY_LOGE(TAG, "no response\n");
        return ESP_ERR_FLASH_NO_RESPONSE;
    }


    uint8_t mfg_id = raw_flash_id & 0xFF;
    uint16_t flash_id = (raw_flash_id >> 16) | (raw_flash_id & 0xFF00);
    *id = ((uint32_t)mfg_id << 16) | flash_id;
    ESP_EARLY_LOGV(TAG, "chip_id: %X\n", *id);
    return ESP_OK;
}
