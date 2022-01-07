
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ESP_OK (int ) ;
 int esp_vfs_spiffs_unregister (int ) ;
 int spiffs_test_partition_label ;

__attribute__((used)) static void test_teardown(void)
{
    TEST_ESP_OK(esp_vfs_spiffs_unregister(spiffs_test_partition_label));
}
