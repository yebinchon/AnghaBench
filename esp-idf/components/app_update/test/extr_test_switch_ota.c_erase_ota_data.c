
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;


 int ESP_PARTITION_SUBTYPE_DATA_OTA ;
 int ESP_PARTITION_TYPE_DATA ;
 int SPI_FLASH_SEC_SIZE ;
 int TEST_ASSERT_NOT_EQUAL (int *,int const*) ;
 int TEST_ESP_OK (int ) ;
 int esp_partition_erase_range (int const*,int ,int) ;
 int * esp_partition_find_first (int ,int ,int *) ;

__attribute__((used)) static void erase_ota_data(void)
{
    const esp_partition_t *data_partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_OTA, ((void*)0));
    TEST_ASSERT_NOT_EQUAL(((void*)0), data_partition);
    TEST_ESP_OK(esp_partition_erase_range(data_partition, 0, 2 * SPI_FLASH_SEC_SIZE));
}
