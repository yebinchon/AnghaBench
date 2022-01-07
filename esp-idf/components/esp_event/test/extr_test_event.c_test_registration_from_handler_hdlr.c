
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_loop_handle_t ;
typedef int esp_event_base_t ;


 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_EVENT_BASE1_EV2 ;
 int esp_event_handler_register_with (int ,int ,int ,int ,void*) ;
 int s_test_base1 ;
 int test_event_simple_handler_1 ;
 int test_event_simple_handler_2 ;
 int test_event_simple_handler_3 ;

__attribute__((used)) static void test_registration_from_handler_hdlr(void* handler_arg, esp_event_base_t base, int32_t id, void* event_arg)
{
    esp_event_loop_handle_t* loop = (esp_event_loop_handle_t*) event_arg;
    TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_register_with(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, test_event_simple_handler_1, handler_arg));
    TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_register_with(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, test_event_simple_handler_2, handler_arg));
    TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_register_with(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, test_event_simple_handler_3, handler_arg));
}
