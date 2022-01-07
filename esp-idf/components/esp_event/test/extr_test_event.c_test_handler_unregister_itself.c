
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_loop_handle_t ;
typedef int esp_event_base_t ;


 int ESP_OK ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int esp_event_handler_unregister_with (int ,int ,int ,void (*) (void*,int ,int ,void*)) ;
 int s_test_base1 ;

__attribute__((used)) static void test_handler_unregister_itself(void* event_handler_arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    esp_event_loop_handle_t* loop = (esp_event_loop_handle_t*) event_data;
    int* unregistered = (int*) event_handler_arg;

    (*unregistered) += (event_base == s_test_base1 ? 0 : 10) + event_id + 1;


    TEST_ASSERT_EQUAL(ESP_OK, esp_event_handler_unregister_with(*loop, event_base, event_id, test_handler_unregister_itself));
}
