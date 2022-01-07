
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ESP_LOGI (char*,char*,int ,int ,int ) ;
 int callback_call_count ;
 int callback_called ;

__attribute__((used)) static void test_callback(void *params, uint32_t select, uint32_t mask, uint32_t value)
{
    ESP_LOGI("test", "test_callback select = %i,  mask = %i, value = %i", select, mask, value);
    callback_called = 1;
    callback_call_count++;
}
