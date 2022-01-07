
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int esp_flash_t ;


 int ESP_LOGI (int ,char*,int *) ;
 int ESP_OK ;
 int TAG ;
 int TEST_ASSERT_EQUAL_HEX (int ,int ) ;
 int TEST_ASSERT_EQUAL_HEX8 (unsigned int,int ) ;
 scalar_t__ erase_test_region (int *,int) ;
 int esp_flash_read (int *,int *,scalar_t__,int) ;
 int esp_flash_write (int *,unsigned int*,scalar_t__,int) ;

void test_single_read_write(esp_flash_t* chip)
{
    ESP_LOGI(TAG, "Testing chip %p...", chip);
    uint32_t offs = erase_test_region(chip, 2);

    for (unsigned v = 0; v < 512; v++) {
        TEST_ASSERT_EQUAL_HEX(ESP_OK, esp_flash_write(chip, &v, offs + v, 1) );
    }

    for (unsigned v = 0; v < 512; v++) {
        uint8_t readback;
        TEST_ASSERT_EQUAL_HEX(ESP_OK, esp_flash_read(chip, &readback, offs + v, 1) );
        TEST_ASSERT_EQUAL_HEX8(v, readback);
    }
}
