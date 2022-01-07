
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int store_data ;
typedef int read_data ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_PARTITION_SUBTYPE_ANY ;
 int ESP_PARTITION_TYPE_DATA ;
 int SPI_FLASH_SEC_SIZE ;
 int TAG ;
 int assert (int) ;
 int esp_partition_erase_range (TYPE_1__ const*,int ,int ) ;
 TYPE_1__* esp_partition_find_first (int ,int ,char*) ;
 int esp_partition_read (TYPE_1__ const*,int ,char*,int) ;
 int esp_partition_write (TYPE_1__ const*,int ,char*,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int,int) ;

void app_main(void)
{
    const esp_partition_t *partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_ANY, "storage");
    assert(partition != ((void*)0));

    static char store_data[] = "ESP-IDF Partition Operations Example (Read, Erase, Write)";
    static char read_data[sizeof(store_data)];


    memset(read_data, 0xFF, sizeof(read_data));
    ESP_ERROR_CHECK(esp_partition_erase_range(partition, 0, partition->size));


    ESP_ERROR_CHECK(esp_partition_write(partition, 0, store_data, sizeof(store_data)));
    ESP_LOGI(TAG, "Written data: %s", store_data);


    ESP_ERROR_CHECK(esp_partition_read(partition, 0, read_data, sizeof(read_data)));
    assert(memcmp(store_data, read_data, sizeof(read_data)) == 0);
    ESP_LOGI(TAG, "Read data: %s", read_data);



    ESP_ERROR_CHECK(esp_partition_erase_range(partition, 0, SPI_FLASH_SEC_SIZE));


    memset(store_data, 0xFF, sizeof(read_data));
    ESP_ERROR_CHECK(esp_partition_read(partition, 0, read_data, sizeof(read_data)));
    assert(memcmp(store_data, read_data, sizeof(read_data)) == 0);

    ESP_LOGI(TAG, "Erased data");

    ESP_LOGI(TAG, "Example end");
}
