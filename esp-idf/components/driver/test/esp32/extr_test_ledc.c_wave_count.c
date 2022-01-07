
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int counter_l_lim; int counter_h_lim; int hctrl_mode; int lctrl_mode; int neg_mode; int pos_mode; int unit; int channel; int ctrl_gpio_num; int pulse_gpio_num; } ;
typedef TYPE_1__ pcnt_config_t ;
typedef int int16_t ;


 int HIGHEST_LIMIT ;
 int LOWEST_LIMIT ;
 int PCNT_CHANNEL_0 ;
 int PCNT_COUNT_DIS ;
 int PCNT_COUNT_INC ;
 int PCNT_CTRL_FLOATING_IO ;
 int PCNT_INPUT_IO ;
 int PCNT_MODE_KEEP ;
 int PCNT_MODE_REVERSE ;
 int PCNT_UNIT_0 ;
 int TEST_ESP_OK (int ) ;
 int pcnt_counter_clear (int ) ;
 int pcnt_counter_pause (int ) ;
 int pcnt_counter_resume (int ) ;
 int pcnt_get_counter_value (int ,int *) ;
 int pcnt_unit_config (TYPE_1__*) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static int16_t wave_count(int last_time)
{
    int16_t test_counter;
    pcnt_config_t pcnt_config = {
        .pulse_gpio_num = PCNT_INPUT_IO,
        .ctrl_gpio_num = PCNT_CTRL_FLOATING_IO,
        .channel = PCNT_CHANNEL_0,
        .unit = PCNT_UNIT_0,
        .pos_mode = PCNT_COUNT_INC,
        .neg_mode = PCNT_COUNT_DIS,
        .lctrl_mode = PCNT_MODE_REVERSE,
        .hctrl_mode = PCNT_MODE_KEEP,
        .counter_h_lim = HIGHEST_LIMIT,
        .counter_l_lim = LOWEST_LIMIT,
    };
    TEST_ESP_OK(pcnt_unit_config(&pcnt_config));


    TEST_ESP_OK(pcnt_counter_pause(PCNT_UNIT_0));
    TEST_ESP_OK(pcnt_counter_clear(PCNT_UNIT_0));
    TEST_ESP_OK(pcnt_counter_resume(PCNT_UNIT_0));
    TEST_ESP_OK(pcnt_get_counter_value(PCNT_UNIT_0, &test_counter));

    vTaskDelay(last_time / portTICK_RATE_MS);
    TEST_ESP_OK(pcnt_get_counter_value(PCNT_UNIT_0, &test_counter));
    return test_counter;
}
