
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int os_func_data; TYPE_1__* os_func; TYPE_3__* host; } ;
typedef TYPE_2__ esp_flash_t ;
typedef int esp_err_t ;
struct TYPE_7__ {scalar_t__ (* host_idle ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int (* delay_ms ) (int ,int) ;} ;


 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 scalar_t__ stub1 (TYPE_3__*) ;
 int stub2 (int ,int) ;

esp_err_t spi_flash_generic_wait_host_idle(esp_flash_t *chip, uint32_t *timeout_ms)
{
    while (chip->host->host_idle(chip->host) && *timeout_ms > 0) {
        if (*timeout_ms > 1) {
            chip->os_func->delay_ms(chip->os_func_data, 1);
        }
        (*timeout_ms)--;
    }
    return (*timeout_ms > 0) ? ESP_OK : ESP_ERR_TIMEOUT;
}
