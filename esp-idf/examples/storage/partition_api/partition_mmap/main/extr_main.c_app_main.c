
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int store_data ;
typedef int spi_flash_mmap_handle_t ;
typedef int read_data ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_PARTITION_SUBTYPE_ANY ;
 int ESP_PARTITION_TYPE_DATA ;
 int SPI_FLASH_MMAP_DATA ;
 int TAG ;
 int assert (int) ;
 int esp_partition_erase_range (TYPE_1__ const*,int ,int ) ;
 TYPE_1__* esp_partition_find_first (int ,int ,char*) ;
 int esp_partition_mmap (TYPE_1__ const*,int ,int ,int ,void const**,int *) ;
 int esp_partition_write (TYPE_1__ const*,int ,char const*,int) ;
 int memcpy (char*,void const*,int) ;
 int spi_flash_munmap (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

void app_main(void)
{
    const esp_partition_t *partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_ANY, "storage");
    assert(partition != ((void*)0));

    static const char store_data[] = "ESP-IDF Partition Memory Map Example";


    ESP_ERROR_CHECK(esp_partition_erase_range(partition, 0, partition->size));
    ESP_ERROR_CHECK(esp_partition_write(partition, 0, store_data, sizeof(store_data)));
    ESP_LOGI(TAG, "Written sample data to partition: %s", store_data);

    const void *map_ptr;
    spi_flash_mmap_handle_t map_handle;


    ESP_ERROR_CHECK(esp_partition_mmap(partition, 0, partition->size, SPI_FLASH_MMAP_DATA, &map_ptr, &map_handle));
    ESP_LOGI(TAG, "Mapped partition to data memory address %p", map_ptr);


    char read_data[sizeof(store_data)];
    memcpy(read_data, map_ptr, sizeof(read_data));
    ESP_LOGI(TAG, "Read sample data from partition using mapped memory: %s", (char*) read_data);

    assert(strcmp(store_data, read_data) == 0);
    ESP_LOGI(TAG, "Data matches");


    spi_flash_munmap(map_handle);
    ESP_LOGI(TAG, "Unmapped partition from data memory");

    ESP_LOGI(TAG, "Example end");
}
