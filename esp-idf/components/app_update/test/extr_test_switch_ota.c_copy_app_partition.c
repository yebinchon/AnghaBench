
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spi_flash_mmap_handle_t ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_ota_handle_t ;


 int SPI_FLASH_MMAP_DATA ;
 int TEST_ESP_OK (int ) ;
 int esp_ota_write (int ,void const*,int ) ;
 int esp_partition_mmap (TYPE_1__ const*,int ,int ,int ,void const**,int *) ;
 int spi_flash_munmap (int ) ;

__attribute__((used)) static void copy_app_partition(esp_ota_handle_t update_handle, const esp_partition_t *curr_app)
{
    const void *partition_bin = ((void*)0);
    spi_flash_mmap_handle_t data_map;
    TEST_ESP_OK(esp_partition_mmap(curr_app, 0, curr_app->size, SPI_FLASH_MMAP_DATA, &partition_bin, &data_map));
    TEST_ESP_OK(esp_ota_write(update_handle, (const void *)partition_bin, curr_app->size));
    spi_flash_munmap(data_map);
}
