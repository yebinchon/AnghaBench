
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ledc_timer_t ;
typedef int ledc_mode_t ;
typedef int int16_t ;


 int TEST_ASSERT_EQUAL_INT32 (int ,int ) ;
 int TEST_ASSERT_INT16_WITHIN (int ,int ,int ) ;
 int TEST_ESP_OK (int ) ;
 int ledc_get_freq (int ,int ) ;
 int ledc_set_freq (int ,int ,int ) ;
 int wave_count (int) ;

__attribute__((used)) static void frequency_set_get(ledc_mode_t speed_mode, ledc_timer_t timer, uint32_t freq_hz, int16_t real_freq, int16_t error)
{
    int16_t count;
    TEST_ESP_OK(ledc_set_freq(speed_mode, timer, freq_hz));
    count = wave_count(1000);
    TEST_ASSERT_INT16_WITHIN(error, count, real_freq);
    TEST_ASSERT_EQUAL_INT32(ledc_get_freq(speed_mode, timer), real_freq);
}
