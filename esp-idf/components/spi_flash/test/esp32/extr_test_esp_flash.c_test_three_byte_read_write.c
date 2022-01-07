
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_flash_t ;


 int ESP_LOGI (int ,char*,int *) ;
 int ESP_OK ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_HEX32 (int,int) ;
 int erase_test_region (int *,int) ;
 int esp_flash_read (int *,int*,int,int) ;
 int esp_flash_write (int *,int*,int,int) ;
 int ets_printf (char*,int) ;

void test_three_byte_read_write(esp_flash_t *chip)
{
    ESP_LOGI(TAG, "Testing chip %p...", chip);
    uint32_t offs = erase_test_region(chip, 2);
    ets_printf("offs:%X\n", offs);

    for (uint32_t v = 0; v < 2000; v++) {
        TEST_ASSERT_EQUAL(ESP_OK, esp_flash_write(chip, &v, offs + 3 * v, 3) );
    }

    for (uint32_t v = 0; v < 2000; v++) {
        uint32_t readback;
        TEST_ASSERT_EQUAL(ESP_OK, esp_flash_read(chip, &readback, offs + 3 * v, 3) );
        TEST_ASSERT_EQUAL_HEX32(v & 0xFFFFFF, readback & 0xFFFFFF);
    }
}
