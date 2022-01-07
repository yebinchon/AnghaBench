
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int miso_len; int * miso_data; int mosi_len; int mosi_data; int command; } ;
typedef TYPE_1__ spi_flash_trans_t ;
struct TYPE_7__ {scalar_t__ (* common_command ) (TYPE_2__*,TYPE_1__*) ;} ;
typedef TYPE_2__ spi_flash_host_driver_t ;
typedef scalar_t__ esp_err_t ;


 int CMD_RDSR ;
 scalar_t__ ESP_OK ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*) ;

esp_err_t memspi_host_read_status_hs(spi_flash_host_driver_t *driver, uint8_t *out_sr)
{

    spi_flash_trans_t t = {
        .command = CMD_RDSR,
        .mosi_data = 0,
        .mosi_len = 0,
        .miso_len = 8
    };
    esp_err_t err = driver->common_command(driver, &t);
    if (err != ESP_OK) {
        return err;
    }
    *out_sr = t.miso_data[0];
    return ESP_OK;
}
