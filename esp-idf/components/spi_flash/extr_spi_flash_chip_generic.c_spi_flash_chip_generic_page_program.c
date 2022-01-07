
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* chip_drv; TYPE_4__* host; } ;
typedef TYPE_2__ esp_flash_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_9__ {int (* program_page ) (TYPE_4__*,void const*,int ,int ) ;} ;
struct TYPE_7__ {scalar_t__ (* wait_idle ) (TYPE_2__*,int ) ;} ;


 int DEFAULT_IDLE_TIMEOUT ;
 int DEFAULT_PAGE_PROGRAM_TIMEOUT ;
 scalar_t__ ESP_OK ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_4__*,void const*,int ,int ) ;
 scalar_t__ stub3 (TYPE_2__*,int ) ;

esp_err_t spi_flash_chip_generic_page_program(esp_flash_t *chip, const void *buffer, uint32_t address, uint32_t length)
{
    esp_err_t err;

    err = chip->chip_drv->wait_idle(chip, DEFAULT_IDLE_TIMEOUT);

    if (err == ESP_OK) {

        chip->host->program_page(chip->host, buffer, address, length);

        err = chip->chip_drv->wait_idle(chip, DEFAULT_PAGE_PROGRAM_TIMEOUT);
    }
    return err;
}
