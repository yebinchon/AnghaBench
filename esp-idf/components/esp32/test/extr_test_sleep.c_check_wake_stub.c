
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ESP_RST_DEEPSLEEP ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_HEX32 (int ,int ) ;
 int TEST_ASSERT_NULL (int ) ;
 int esp_get_deep_sleep_wake_stub () ;
 int esp_reset_reason () ;
 int s_wake_stub_var ;
 int wake_stub ;

__attribute__((used)) static void check_wake_stub(void)
{
    TEST_ASSERT_EQUAL(ESP_RST_DEEPSLEEP, esp_reset_reason());
    TEST_ASSERT_EQUAL_HEX32((uint32_t) &wake_stub, s_wake_stub_var);

    TEST_ASSERT_NULL(esp_get_deep_sleep_wake_stub());
}
