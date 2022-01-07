
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int os_func_data; TYPE_1__* os_func; TYPE_3__* host; } ;
typedef TYPE_2__ esp_flash_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_8__ {scalar_t__ (* read_status ) (TYPE_3__*,int*) ;} ;
struct TYPE_6__ {int (* delay_ms ) (int ,int) ;} ;


 scalar_t__ ESP_ERR_TIMEOUT ;
 scalar_t__ ESP_OK ;
 int SR_WIP ;
 scalar_t__ spi_flash_generic_wait_host_idle (TYPE_2__*,int*) ;
 scalar_t__ stub1 (TYPE_3__*,int*) ;
 int stub2 (int ,int) ;

esp_err_t spi_flash_chip_generic_wait_idle(esp_flash_t *chip, uint32_t timeout_ms)
{
    timeout_ms++;

    uint8_t status = 0;
    while (timeout_ms > 0) {

        esp_err_t err = spi_flash_generic_wait_host_idle(chip, &timeout_ms);
        if (err != ESP_OK) {
            return err;
        }

        err = chip->host->read_status(chip->host, &status);
        if (err != ESP_OK) {
            return err;
        }
        if ((status & SR_WIP) == 0) {
            break;
        }
        if (timeout_ms > 1) {
            chip->os_func->delay_ms(chip->os_func_data, 1);
        }
        timeout_ms--;
    }

    return (timeout_ms > 0) ? ESP_OK : ESP_ERR_TIMEOUT;
}
