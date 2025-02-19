
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* chip_drv; int size; TYPE_4__* host; } ;
typedef TYPE_2__ esp_flash_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_11__ {scalar_t__ (* flush_cache ) (TYPE_4__*,int ,int ) ;int (* erase_chip ) (TYPE_4__*) ;} ;
struct TYPE_9__ {scalar_t__ (* set_chip_write_protect ) (TYPE_2__*,int) ;scalar_t__ (* wait_idle ) (TYPE_2__*,int ) ;} ;


 int DEFAULT_IDLE_TIMEOUT ;
 scalar_t__ ESP_OK ;
 int SPI_FLASH_GENERIC_CHIP_ERASE_TIMEOUT ;
 scalar_t__ stub1 (TYPE_2__*,int) ;
 scalar_t__ stub2 (TYPE_2__*,int ) ;
 int stub3 (TYPE_4__*) ;
 scalar_t__ stub4 (TYPE_4__*,int ,int ) ;
 scalar_t__ stub5 (TYPE_2__*,int ) ;

esp_err_t spi_flash_chip_generic_erase_chip(esp_flash_t *chip)
{
    esp_err_t err;

    err = chip->chip_drv->set_chip_write_protect(chip, 0);
    if (err == ESP_OK) {
        err = chip->chip_drv->wait_idle(chip, DEFAULT_IDLE_TIMEOUT);
    }
    if (err == ESP_OK) {
        chip->host->erase_chip(chip->host);

        if (chip->host->flush_cache) {
            err = chip->host->flush_cache(chip->host, 0, chip->size);
            if (err != ESP_OK) {
                return err;
            }
        }
        err = chip->chip_drv->wait_idle(chip, SPI_FLASH_GENERIC_CHIP_ERASE_TIMEOUT);
    }
    return err;
}
