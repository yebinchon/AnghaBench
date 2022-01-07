
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* host; } ;
typedef TYPE_1__ esp_flash_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_6__ {scalar_t__ (* read ) (TYPE_2__*,void*,scalar_t__,scalar_t__) ;int max_read_bytes; } ;


 scalar_t__ ESP_OK ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int spi_flash_chip_generic_config_host_io_mode (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_2__*,void*,scalar_t__,scalar_t__) ;

esp_err_t spi_flash_chip_generic_read(esp_flash_t *chip, void *buffer, uint32_t address, uint32_t length)
{
    esp_err_t err = ESP_OK;

    spi_flash_chip_generic_config_host_io_mode(chip);

    while (err == ESP_OK && length > 0) {
        uint32_t read_len = MIN(length, chip->host->max_read_bytes);
        err = chip->host->read(chip->host, buffer, address, read_len);

        buffer += read_len;
        length -= read_len;
        address += read_len;
    }

    return err;
}
