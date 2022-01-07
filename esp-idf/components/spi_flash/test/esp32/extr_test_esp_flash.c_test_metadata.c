
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_flash_t ;


 int ESP_LOGI (int ,char*,int *) ;
 int TAG ;
 int TEST_ESP_OK (int ) ;
 int esp_flash_get_size (int *,int*) ;
 int esp_flash_read_id (int *,int*) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void test_metadata(esp_flash_t *chip)
{
    ESP_LOGI(TAG, "Testing chip %p...", chip);
    uint32_t id, size;
    TEST_ESP_OK(esp_flash_read_id(chip, &id));
    TEST_ESP_OK(esp_flash_get_size(chip, &size));
    printf("Flash ID %08x detected size %d bytes\n", id, size);
}
