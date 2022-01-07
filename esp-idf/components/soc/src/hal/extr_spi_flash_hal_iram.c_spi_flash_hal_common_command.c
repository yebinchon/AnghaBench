
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int miso_data; int mosi_data; int mosi_len; int miso_len; int command; } ;
typedef TYPE_1__ spi_flash_trans_t ;
struct TYPE_9__ {int (* poll_cmd_done ) (TYPE_2__*) ;int (* configure_host_io_mode ) (TYPE_2__*,int ,int ,int ,int ) ;} ;
typedef TYPE_2__ spi_flash_host_driver_t ;
typedef int spi_dev_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int SPI_FLASH_FASTRD ;
 int * get_spi_dev (TYPE_2__*) ;
 int spi_flash_ll_get_buffer_data (int *,int ,int) ;
 int spi_flash_ll_set_dummy (int *,int ) ;
 int spi_flash_ll_set_miso_bitlen (int *,int ) ;
 int spi_flash_ll_set_mosi_bitlen (int *,int ) ;
 int spi_flash_ll_user_start (int *) ;
 int spi_flash_ll_write_word (int *,int ) ;
 int stub1 (TYPE_2__*,int ,int ,int ,int ) ;
 int stub2 (TYPE_2__*) ;

esp_err_t spi_flash_hal_common_command(spi_flash_host_driver_t *host, spi_flash_trans_t *trans)
{
    host->configure_host_io_mode(host, trans->command, 0, 0, SPI_FLASH_FASTRD);

    spi_dev_t *dev = get_spi_dev(host);

    if (trans->miso_len == 0) {
        spi_flash_ll_set_dummy(dev, 0);
    }

    spi_flash_ll_set_miso_bitlen(dev, trans->miso_len);
    spi_flash_ll_set_mosi_bitlen(dev, trans->mosi_len);

    spi_flash_ll_write_word(dev, trans->mosi_data);

    spi_flash_ll_user_start(dev);
    host->poll_cmd_done(host);
    spi_flash_ll_get_buffer_data(dev, trans->miso_data, 8);
    return ESP_OK;
}
