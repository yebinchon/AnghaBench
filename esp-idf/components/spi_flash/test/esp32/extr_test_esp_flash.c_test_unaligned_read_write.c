
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int esp_flash_t ;
typedef int buf ;


 int ESP_LOGI (int ,char*,int *) ;
 int ESP_OK ;
 int TAG ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_STRING_LEN (char const*,char*,int) ;
 scalar_t__ erase_test_region (int *,int) ;
 int esp_flash_read (int *,char*,scalar_t__,int) ;
 int esp_flash_write (int *,char const*,scalar_t__,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memset (char*,int,int) ;
 int strlen (char const*) ;

void test_unaligned_read_write(esp_flash_t *chip)
{
    ESP_LOGI(TAG, "Testing chip %p...", chip);
    uint32_t offs = erase_test_region(chip, 2);

    const char *msg = "i am a message";
    TEST_ASSERT(strlen(msg) + 1 % 4 != 0);
    TEST_ASSERT_EQUAL(ESP_OK, esp_flash_write(chip, msg, offs + 1, strlen(msg) + 1) );

    char buf[strlen(msg) + 1];

    memset(buf, 0xEE, sizeof(buf));

    TEST_ASSERT_EQUAL(ESP_OK, esp_flash_read(chip, buf, offs + 1, strlen(msg) + 1) );
    TEST_ASSERT_EQUAL_STRING_LEN(msg, buf, strlen(msg));
    TEST_ASSERT(memcmp(buf, msg, strlen(msg) + 1) == 0);
}
