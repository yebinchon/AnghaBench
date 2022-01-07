
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ledc_mode_t ;
typedef int ledc_channel_t ;


 int TEST_ASSERT_EQUAL_INT32 (int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int ledc_get_duty (int ,int ) ;
 int ledc_set_duty (int ,int ,int ) ;
 int ledc_update_duty (int ,int ) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static void timer_duty_set_get(ledc_mode_t speed_mode, ledc_channel_t channel, uint32_t duty)
{
    TEST_ESP_OK(ledc_set_duty(speed_mode, channel, duty));
    TEST_ESP_OK(ledc_update_duty(speed_mode, channel));
    vTaskDelay(1000 / portTICK_RATE_MS);
    TEST_ASSERT_EQUAL_INT32(ledc_get_duty(speed_mode, channel), duty);
}
