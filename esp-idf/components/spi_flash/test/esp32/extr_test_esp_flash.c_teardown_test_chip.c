
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spi_host_device_t ;
typedef int esp_flash_t ;


 int release_bus (int ) ;
 int spi_bus_remove_flash_device (int *) ;

void teardown_test_chip(esp_flash_t* chip, spi_host_device_t host)
{

    spi_bus_remove_flash_device(chip);
    release_bus(host);
}
