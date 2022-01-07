
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;


 int ESP_PARTITION_SUBTYPE_ANY ;
 int ESP_PARTITION_TYPE_DATA ;
 int TEST_ASSERT_NOT_NULL (int const*) ;
 int * esp_partition_find_first (int ,int ,char*) ;

const esp_partition_t *get_test_data_partition(void)
{

    const esp_partition_t *result = esp_partition_find_first(ESP_PARTITION_TYPE_DATA,
            ESP_PARTITION_SUBTYPE_ANY, "flash_test");
    TEST_ASSERT_NOT_NULL(result);
    return result;
}
