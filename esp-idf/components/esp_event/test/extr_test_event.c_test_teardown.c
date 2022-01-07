
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_event_loop_delete_default () ;

__attribute__((used)) static void test_teardown(void)
{
    TEST_ASSERT_EQUAL(ESP_OK, esp_event_loop_delete_default());
}
