
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue_size; } ;
typedef TYPE_1__ spi_device_interface_config_t ;
typedef int spi_device_handle_t ;
typedef int spi_bus_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int SPI_BUS_TEST_DEFAULT_CONFIG () ;
 TYPE_1__ SPI_DEVICE_TEST_DEFAULT_CONFIG () ;
 int TEST_ASSERT (int) ;
 int TEST_SPI_HOST ;
 scalar_t__ spi_bus_add_device (int ,TYPE_1__*,int *) ;
 scalar_t__ spi_bus_initialize (int ,int *,int) ;

__attribute__((used)) static void speed_setup(spi_device_handle_t* spi, bool use_dma)
{
    esp_err_t ret;
    spi_bus_config_t buscfg=SPI_BUS_TEST_DEFAULT_CONFIG();
    spi_device_interface_config_t devcfg=SPI_DEVICE_TEST_DEFAULT_CONFIG();
    devcfg.queue_size=8;


    ret=spi_bus_initialize(TEST_SPI_HOST, &buscfg, (use_dma?1:0));
    TEST_ASSERT(ret==ESP_OK);
    ret=spi_bus_add_device(TEST_SPI_HOST, &devcfg, spi);
    TEST_ASSERT(ret==ESP_OK);
}
