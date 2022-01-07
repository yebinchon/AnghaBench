
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spi_device_handle_t ;


 int TEST_ESP_OK (int ) ;
 int TEST_SPI_HOST ;
 int spi_bus_free (int ) ;
 int spi_bus_remove_device (int ) ;

void master_free_device_bus(spi_device_handle_t spi)
{
    TEST_ESP_OK( spi_bus_remove_device(spi) );
    TEST_ESP_OK( spi_bus_free(TEST_SPI_HOST) );
}
